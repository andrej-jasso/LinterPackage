// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLinter",
    products: [
        .executable(name: "mylinter", targets: ["MyLinter"])
    ],
    dependencies: [
        .package(
            name: "swift-argument-parser",
            url: "https://github.com/apple/swift-argument-parser",
            from: "1.0.0"
        ),
        .package(
            name: "SwiftLint",
            url: "https://github.com/realm/SwiftLint.git",
            from: "0.0.1"
        )
    ],
    targets: [
        .executableTarget(
            name: "MyLinter",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "swiftlint", package: "SwiftLint")
            ]
        )
    ]
)
