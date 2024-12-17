// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestSPM",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TestSPM",
            targets: ["TestSPM"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
         // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TestSPM",
            dependencies: [
            .target(name: "PrintHelloSwift")
        ]),
        .testTarget(
            name: "TestSPMTests",
            dependencies: ["TestSPM"]),
        .binaryTarget(
            name: "PrintHelloSwift",
            url: "https://github.com/spvagelis/TestSPM/releases/download/1.0.1/PrintHelloSwift.xcframework.zip",
            checksum: "757b2c94c37b347bd258dcc89a2fefba96bb671ffadf788b6e8a7b8f6318668f"
        )
    ]
)
