// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "DeepLinksKit",
    products: [
        .library(
            name: "DeepLinksKit",
            targets: ["DeepLinksKit"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "DeepLinksKit",
            dependencies: []
        )
    ]
)
