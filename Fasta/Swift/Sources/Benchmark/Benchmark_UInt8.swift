// Will revisit it in future (maybe)

/* The Computer Language Benchmarks Game
 http://benchmarksgame.alioth.debian.org/
 contributed by Ralph Ganszky

 for Swift 3.0+
 using multiple threads by splitting workload in
 random number generation and building output string.
 random number get generated as Int32 like in gcc-7
 by Jeremy Zerfas and normalized in a later step.
 */

import Foundation
import Dispatch
import CommonAPI

let linewidth = 60
let bufferLines = 10240
let rndBufSize = (bufferLines * linewidth)
let writeBufSize = (bufferLines * (linewidth + 1))

let IM: Int32 = 139968
let IA: Int32 = 3877
let IC: Int32 = 29573
var seed: Int32 = 42

struct AminoAcid {
    let prob: Double
    let sym: UInt8

    init(_ prob: Double, _ sym: UInt8) {
        self.prob = prob
        self.sym = sym
    }
}

struct CumAcid {
    var cprob: Int32
    var sym: UInt8

    init(_ cprob: Int32, _ sym: UInt8) {
        self.cprob = cprob
        self.sym = sym
    }
}

// String to repeat
let aluString = "GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTC" +
"GAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTG" +
"TAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCG" +
"CCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA"
let alu = Array(aluString.utf8)
let aluUtf16 = Array(aluString.utf16)

// Amino acids and their probabilities
let iub = [
    AminoAcid(0.27, Character("a").asciiValue!),
    AminoAcid(0.12, Character("c").asciiValue!),
    AminoAcid(0.12, Character("g").asciiValue!),
    AminoAcid(0.27, Character("t").asciiValue!),
    AminoAcid(0.02, Character("B").asciiValue!),
    AminoAcid(0.02, Character("D").asciiValue!),
    AminoAcid(0.02, Character("H").asciiValue!),
    AminoAcid(0.02, Character("K").asciiValue!),
    AminoAcid(0.02, Character("M").asciiValue!),
    AminoAcid(0.02, Character("N").asciiValue!),
    AminoAcid(0.02, Character("R").asciiValue!),
    AminoAcid(0.02, Character("S").asciiValue!),
    AminoAcid(0.02, Character("V").asciiValue!),
    AminoAcid(0.02, Character("W").asciiValue!),
    AminoAcid(0.02, Character("Y").asciiValue!),
]

let homosapiens = [
    AminoAcid(0.3029549426680, Character("a").asciiValue!),
    AminoAcid(0.1979883004921, Character("c").asciiValue!),
    AminoAcid(0.1975473066391, Character("g").asciiValue!),
    AminoAcid(0.3015094502008, Character("t").asciiValue!),
]

// Allocate some resources to buffer data and
// handle ownership by semaphores
let nBufs = 4   // need to be a power of two
var bufs = [UnsafeMutablePointer<Int32>]()
var cBufs = [UnsafeMutablePointer<UInt8>]()
var pSemaphore = [DispatchSemaphore]()
var wSemaphore = [DispatchSemaphore]()
for _ in 0..<nBufs {
    bufs.append(UnsafeMutablePointer<Int32>.allocate(capacity: rndBufSize))
    cBufs.append(UnsafeMutablePointer<UInt8>.allocate(capacity: writeBufSize))
    pSemaphore.append(DispatchSemaphore(value: 1))
    wSemaphore.append(DispatchSemaphore(value: 1))
}
defer {
    for i in 0..<nBufs {
        bufs[i].deallocate()
        cBufs[i].deallocate()
    }
}

// Let's have some queues to produce data, consume it
// and to syncronize data ownership
let cQueue = DispatchQueue(label: "Consumer", attributes: .concurrent)
let pQueue = DispatchQueue(label: "Producer", attributes: [])
let wQueue = DispatchQueue(label: "Writer", attributes: [])
let group = DispatchGroup()

// Binary search on acids
func bsearch(e: Int32, acids: [CumAcid]) -> UInt8 {
    var low = 0
    var high = acids.count - 1
    while low <= high {
        let mid = low + (high - low) / 2
        if acids[mid].cprob >= e {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return acids[high + 1].sym
}

// Build a block in fasta format
func buildFastaBlockFromString(s: [UInt8], sUTF16: [UInt16]) -> UnsafeMutablePointer<UInt8> {
    // Build block of linewidth characters wide string
    let utf8Array = Array(repeating: s, count: linewidth).reduce(into: [UInt8]()) { partialResult, next in
        partialResult.append(contentsOf: next)
    }
    let blockUP = utf8Array.withUnsafeBufferPointer { buf in buf.baseAddress! }
    let blockNl = UnsafeMutablePointer<UInt8>.allocate(capacity: (sUTF16.count) + sUTF16.count * linewidth - 1)
    defer {
        blockNl.deallocate()
    }
    var blockIn = blockNl
    for i in 0..<sUTF16.count {
        let beg = blockUP.advanced(by: i * linewidth)
        blockIn.update(from: beg, count: linewidth)
        blockIn = blockIn.advanced(by: linewidth)
        if i < sUTF16.count - 1 {
            blockIn[0] = Character("\n").asciiValue!
            blockIn = blockIn.advanced(by: 1)
        }
    }

    // Recreate String
    return blockNl//String(cString: blockNl)
}

// random
func random() -> Int32 {
    seed = (seed * IA + IC) % IM
    return seed
}

// Producer task
func genRandom(n: Int, block: Int) {
    for i in 0..<min(n, rndBufSize) {
        bufs[block][i] = random()
    }
}

// Consumer task
func consumeRandom(n: Int, block: Int, acids: [CumAcid]) {
    var bufPos = 0
    var lineCounter = 0
    for i in 0..<min(n, rndBufSize) {
        let c = bsearch(e: bufs[block][i], acids: acids)
        cBufs[block][bufPos] = c
        lineCounter += 1
        bufPos += 1
        if lineCounter == linewidth {
            cBufs[block][bufPos] = 10
            bufPos += 1
            lineCounter = 0
        }
    }
}

// Print random amino acid sequences
func randomFasta(n: Int, acids: [AminoAcid]) {

    // Adjust probability to cumulative
    var cumulative = 0.0
    var cumAcid = [CumAcid](repeating: CumAcid(0, 0), count: acids.count)
    for (i, acid) in acids.enumerated() {
        cumulative += acid.prob
        cumAcid[i].cprob = Int32(cumulative * Double(IM))
        cumAcid[i].sym = acid.sym
    }

    let junks = (n + rndBufSize - 1) / rndBufSize
    let remainder = n % rndBufSize
    var deferedWrite = [Int]()
    var writeBlock = 0
    group.enter()
    pQueue.async {

        for i in 0..<junks-1 {
            let block = i % bufs.count
            pSemaphore[block].wait()
            genRandom(n: rndBufSize, block: block)
            cQueue.async(group: group) {

                wSemaphore[block].wait()
                consumeRandom(n: rndBufSize, block: block, acids: cumAcid)
                pSemaphore[block].signal()
                wQueue.async(group: group) {

                    if block != writeBlock {
                        deferedWrite.append(block)
                    } else {
                        // print(String(cString: cBufs[block]), terminator: "")
                        writeBlock = (writeBlock + 1) & (nBufs-1)
                        wSemaphore[block].signal()
                        if deferedWrite.count > 0 {
                            while deferedWrite.contains(writeBlock) {
                                let blk = writeBlock
                                // print(String(cString: cBufs[blk]), terminator: "")
                                writeBlock = (writeBlock + 1) & (nBufs-1)
                                deferedWrite.remove(at: deferedWrite.firstIndex(of: blk)!)
                                wSemaphore[blk].signal()
                            }
                        }
                    }
                }
            }
        }
        group.leave()
    }
    group.wait()
    genRandom(n: remainder, block: 0)
    consumeRandom(n: remainder, block: 0, acids: cumAcid)

    let last = cBufs[0]//String(cString: cBufs[0])
    var stringRemainder = remainder+(remainder/linewidth)
    if stringRemainder % (linewidth+1) == 0 {
        stringRemainder -= 1
    }
    // print(last[last.startIndex..<last.index(last.startIndex, offsetBy: stringRemainder)])
}

// Print alu string in fasta format
func repeatFasta(n: Int, alu: UnsafeMutablePointer<UInt8>, sUTF16: [UInt16]) {
    var aluLen = n + n / linewidth
    let aluSize = sUTF16.count + 1
    if aluLen > aluSize {
        // for _ in 0..<aluLen/aluSize {
        // print(alu)
        // }
        aluLen -= (aluLen / aluSize) * aluSize
    }
    // Remove newline at the end because print adds it anyhow
    if n % linewidth == 0 {
        aluLen -= 1
    }
    // if aluLen > 0 {
    //     print(alu[alu.startIndex..<alu.index(alu.startIndex, offsetBy: aluLen)])
    // }
}

// Read command line parameters
let n: Int = if CommandLine.arguments.count > 1 {
    Int(CommandLine.arguments[1]) ?? 1000
} else {
    1000
}

// Build block of linewidth characters wide string
let aluBlock = buildFastaBlockFromString(s: alu, sUTF16: aluUtf16)

measure(name: "Fasta", measuresCount: LARGE_MEASURE_COUNT) {
    repeatFasta(n: 2*n, alu: aluBlock, sUTF16: aluUtf16)
    randomFasta(n: 3*n, acids: iub)
    randomFasta(n: 5*n, acids: homosapiens)
}

//repeatFasta(n: 2*n, alu: aluBlock)
//print(">ONE Homo sapiens alu: ")

//randomFasta(n: 3*n, acids: iub)
//print(">TWO IUB ambiguity codes: ")

//randomFasta(n: 5*n, acids: homosapiens)
//print(">THREE Homo sapiens frequency: ")
