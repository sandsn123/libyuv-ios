// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "Libyuv",
    platforms: [
        .macOS(.v10_14), .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Libyuv",
            targets: ["Libyuv"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        .binaryTarget(
            name: "Libyuv",
            path: "Sources/libyuv-ios/libyuv.xcframework"
        )
    ]
)
