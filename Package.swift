// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Vungle-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "VungleAdapter", targets: ["VungleAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", exact: "7.7.6"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "VungleAdapter",
      dependencies: [
        "VungleAdapterSDK",
        .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "VungleAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/vungle-adapter/5.13.0/ISVungleAdapter5.13.0.zip",
      checksum: "4b7731b8adc832bb7384cdc1b5b5d1f862c7de324c2da4c433167e00af475f76"
    )
  ]
)
