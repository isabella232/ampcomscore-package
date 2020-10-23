// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "9.1.0"

let package = Package(
    name: "AmpComScore",
    platforms: [
        .iOS(.v12), .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AmpComScore",
            targets: ["AmpComScore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/akamai/ampcore-package", from: Version(version)!),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "AmpComScore",
            url: "https://mdtp-a.akamaihd.net/amp-ios-sdk/frameworks/\(version)/AmpComScore.zip",
            checksum: "9c6a4a1da2bd06f4bc89b5e2158bdb7591fd647d2076811b6434b4431ca3f819"
        ),
    ]
)
