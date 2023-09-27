// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "Libyuv",
    platforms: [
        .macOS(.v12), .iOS(.v13)
    ],
    products: [
        .library(
            name: "Libyuv",
            targets: ["Libyuv", "LibyuvXCframework"])
    ],
    targets: [
        .binaryTarget(
            name: "LibyuvXCframework",
            path: "libyuv.xcframework"
        ),
        .target(name: "Libyuv", path: "Sources")
    ]
)
