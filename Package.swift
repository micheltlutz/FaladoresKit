// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FaladoresKit",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v7),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "FaladoresKit",
            targets: ["FaladoresKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FaladoresKit",
            dependencies: []),
        .testTarget(
            name: "FaladoresKitTests",
            dependencies: ["FaladoresKit"]),
    ]
)
