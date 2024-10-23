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
        )
    ],
    targets: [
        .executableTarget(
            name: "Benchmark",
            dependencies: [
                .product(
                    name: "CommonAPI",
                    package: "SwiftModules"
                )
            ]
        )
    ]
)
