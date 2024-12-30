// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LZFoundation",
    products: [
        .library(
            name: "LZFoundation",
            targets: ["LZFoundation"]),
    ],
    targets: [
        .target(
            name: "LZFoundation"),
        .testTarget(
            name: "LZFoundationTests",
            dependencies: [
                "LZFoundation"
            ]),
    ]
)
