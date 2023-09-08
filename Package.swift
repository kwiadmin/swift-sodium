// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Sodium",
    products: [
        .library(name: "Sodium", targets: ["Sodium"]),
    ],
    targets: [
        .binaryTarget(name: "Clibsodium", path: "Clibsodium.xcframework"),
        .target(
            name: "ClibsodiumWrapped",
            dependencies: ["Clibsodium"]
        ),
        .target(
            name: "Sodium",
            dependencies: ["ClibsodiumWrapped"],
            exclude: ["libsodium", "Info.plist"]
        ),
        .testTarget(
            name: "SodiumTests",
            dependencies: ["Sodium"],
            exclude: ["Info.plist"]
        )
    ]
)
