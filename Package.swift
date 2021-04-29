// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CTAssetsPickerController",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "CTAssetsPickerController", targets: ["CTAssetsPickerControllerTarget"])
    ],
    dependencies: [
        .package(name: "PureLayout", url: "https://github.com/PureLayout/PureLayout.git", .upToNextMajor(from: "3.1.6"))
    ],
    targets: [
        // The target name is different so that Xcode doesn't think CTAssetsPickerController.h is supposed to be an umbrella header.
        .target(name: "CTAssetsPickerControllerTarget",
                dependencies: ["PureLayout"],
                path: "CTAssetsPickerController",
                resources: [
                    .process("Resources")
                ],
                publicHeadersPath: "")
    ]
)

