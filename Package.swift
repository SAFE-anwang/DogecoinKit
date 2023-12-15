// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "DogecoinKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "DogecoinKit",
            targets: ["DogecoinKit"]),
    ], 

    dependencies: [
        .package(url: "https://github.com/SAFE-anwang/BitcoinCore.Swift.git", .upToNextMajor(from: "2.2.0")),
        .package(url: "https://github.com/greymass/swift-scrypt.git", from: "1.0.0"),
        .package(url: "https://github.com/horizontalsystems/HsToolKit.Swift.git", .upToNextMajor(from: "2.0.0")),
    ],
    targets: [
        .target(
            name: "DogecoinKit",
            dependencies: [
                .product(name: "Scrypt", package: "swift-scrypt"),
                .product(name: "BitcoinCore", package: "BitcoinCore.Swift"),
                .product(name: "HsToolKit", package: "HsToolKit.Swift"),
            ]
        ),
    ]
)
