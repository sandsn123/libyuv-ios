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
            targets: ["Libyuv", "libyuv_ios", "Adyen3DS2"])
    ],
    targets: [
        .binaryTarget(
            name: "libyuv_ios",
            path: "./libyuv_ios.xcframework"
        ),
        .binaryTarget(
            name: "Adyen3DS2",
            path: "./Adyen3DS2.xcframework"
        ),
        .target(name: "Libyuv",
                path: "Sources"
            )
    ]
)
