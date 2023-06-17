// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "APTA_PR_M_S_015_06",
    platforms: [.macOS(.v12), .iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "APTA_PR_M_S_015_06",
            targets: ["APTA_PR_M_S_015_06"])
    ],
    dependencies: [
        .package(url: "https://github.com/adamayoung/swiftlint-plugin.git", from: "0.51.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "APTA_PR_M_S_015_06",
            dependencies: [],
            plugins: [.plugin(name: "SwiftLintPlugin", package: "swiftlint-plugin")]),
        .testTarget(
            name: "APTATests",
            dependencies: ["APTA_PR_M_S_015_06"])
    ]
)
