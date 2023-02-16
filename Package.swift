// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "BitcoinKit",
    products: [
        .library(name: "BitcoinKit", targets: ["BitcoinKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor-community/copenssl.git", .exact("1.0.0-rc.1")),
        .package(url: "https://github.com/vapor-community/random.git", .upToNextMinor(from: "1.2.0"))
    ],
    targets: [
        .target(
            name: "BitcoinKit",
            dependencies: ["BitcoinKitPrivate", "Random"]
        ),
        .target(
            name: "BitcoinKitPrivate",
            dependencies: ["COpenSSL"]
        ),
        .testTarget(
            name: "BitcoinKitTests",
            dependencies: ["BitcoinKit"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
