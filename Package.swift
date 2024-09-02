// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NaverMap-SPM-iOS",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NaverMap-SPM-iOS",
            targets: ["NaverMap-SPM-iOS"]),
    ],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            path: "./Frameworks/NMapsMap.xcframework"
        ),
        .binaryTarget(
            name: "NMapsGeometry",
            path: "./Frameworks/NMapsGeometry.xcframework"
        ),
        .target(
            name: "NaverMap-SPM-iOS"),
        .testTarget(
            name: "NaverMap-SPM-iOSTests",
            dependencies: ["NaverMap-SPM-iOS"]),
    ]
)
