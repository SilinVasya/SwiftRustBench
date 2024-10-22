// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftModules",
    products: [
        .library(
            name: "CommonAPI",
            targets: ["CommonAPI"]),
    ],
    targets: [
        .target(
            name: "WindowsBridge",
            dependencies: [],
            path: "Sources/WindowsBridge"),
        .target(
            name: "CommonAPI",
            dependencies: [
                .target(name: "WindowsBridge")
            ],
            path: "Sources/CommonAPI")
    ]
)
