// swift-tools-version:5.4

import PackageDescription


let package = Package(
    name: "CollectorVapor",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "CollectorVapor",
            targets: ["CollectorVapor"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/Apodini/Collector", .branch("develop"))
    ],
    targets: [
        .target(
            name: "CollectorVapor",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "Collector", package: "Collector")
            ]
        ),
        .testTarget(
            name: "CollectorVaporTests",
            dependencies: [
                .target(name: "CollectorVapor")
            ]
        )
    ]
)
