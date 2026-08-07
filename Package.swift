// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "material-components-ios",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MaterialTextFields",
            targets: ["MaterialTextFields"]
        )
    ],
    targets: [
        .target(
            name: "MaterialTextFields",
            path: "Sources",
            publicHeadersPath: ".",
            cSettings: [
                .define("MDC_TARGET_SPM", to: "1"),
                .headerSearchPath(".")
            ]
        )
    ]
)