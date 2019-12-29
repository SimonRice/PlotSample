// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PlotSample",
    dependencies: [
        .package(url: "https://github.com/johnsundell/plot.git", from: "0.1.0"),
        .package(url: "https://github.com/JohnSundell/Files.git", from: "4.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "PlotSample",
            dependencies: ["Plot", "Files"]),
        .testTarget(
            name: "PlotSampleTests",
            dependencies: ["PlotSample"]),
    ]
)
