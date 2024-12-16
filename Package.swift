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
            path: "./Sources/PrintHelloSwift.xcframework")
    ]
)
