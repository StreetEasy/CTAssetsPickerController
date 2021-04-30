// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CTAssetsPickerController",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "CTAssetsPickerController", targets: ["CTAssetsPickerController"])
    ],
    dependencies: [
        .package(name: "PureLayout", url: "https://github.com/PureLayout/PureLayout.git", .upToNextMajor(from: "3.1.6"))
    ],
    targets: [
        .target(name: "CTAssetsPickerController",
                dependencies: ["PureLayout"],
                path: "CTAssetsPickerController")
    ]
)

