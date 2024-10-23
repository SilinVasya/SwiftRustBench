// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Benchmark",
    products: [
        .executable(
            name: "Benchmark",
            targets: ["Benchmark"]
        )
    ],
    dependencies: [
        .package(
            path: "../../SwiftModules"
        ),
        .package(
            url: "https://github.com/apple/swift-collections.git", 
            .upToNextMinor(from: "1.1.0")
        )
    ],
    targets: [
        .executableTarget(
            name: "Benchmark",
            dependencies: [
                .product(
                    name: "CommonAPI",
                    package: "SwiftModules"
                ),
                .product(
                    name: "Collections",
                    package: "swift-collections"
                )
            ],
            resources: [
                .process("resources")
            ]
        )
    ]
)
