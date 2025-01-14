// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Sodium",
    products: [
        .library(name: "Sodium", targets: ["Sodium"]),
    ],
    targets: [
        .binaryTarget(name: "libsodium", path: "Clibsodium.xcframework"),
        .target(
            name: "Sodium",
            dependencies: ["libsodium"],
            exclude: ["libsodium", "Info.plist"]
        ),
        .testTarget(
            name: "SodiumTests",
            dependencies: ["Sodium"],
            exclude: ["Info.plist"]
        )
    ]
)
