// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "NaverMap-SPM-iOS",
    products: [
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
            name: "NaverMap-SPM-iOS",
            dependencies: ["NMapsMap", "NMapsGeometry"]
        )
    ]
)
