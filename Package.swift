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
            targets: ["LibyuvPackage"])
    ],
    targets: [
        .target(
            name: "LibyuvPackage",
            dependencies: ["Libyuv"],
            path: "Sources/Swift"),
        .target(
            name: "Libyuv",
            dependencies: ["LibyuvXC"],
            path: "Sources/C"),
        .binaryTarget(
            name: "LibyuvXC",
            path: "Libs/libyuv_ios.xcframework"),
        .testTarget(
            name: "Libyuv-Tests",
            dependencies: ["Libyuv"],
            path: "Tests/Swift"),
    ]
)
