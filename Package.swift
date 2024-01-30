// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DummyPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DummyPackage",
            targets: ["DummyPackage"]),
        .library(
            name: "DummyPackage-static",
            type: .static,
            targets: ["DummyPackage"]),
        .library(
            name: "DummyPackage-dynamic",
            type: .dynamic,
            targets: ["DummyPackage"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DummyPackage"),
        .testTarget(
            name: "DummyPackageTests",
            dependencies: ["DummyPackage"]),
    ]
)
