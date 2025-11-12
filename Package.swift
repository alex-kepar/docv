// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TruliooDocV",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "TruliooDocV",
            targets: ["TruliooDocV", "TruliooCore", "TruliooSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.4.3"),
        .package(url: "https://github.com/connectrpc/connect-swift", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "TruliooDocV",
            dependencies: [
                .product(name: "Lottie", package: "lottie-ios"),
                .product(name: "Connect", package: "connect-swift")
            ]
        ),
        .binaryTarget(
            name: "TruliooCore",
            path: "TruliooCore.xcframework"
        ),
        .binaryTarget(
            name: "TruliooSDK",
            path: "TruliooSDK.xcframework"
        )
    ]
)
