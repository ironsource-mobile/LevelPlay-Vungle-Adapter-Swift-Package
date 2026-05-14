// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Vungle-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "VungleAdapter", targets: ["VungleAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", exact: "7.7.3"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "VungleAdapter",
      dependencies: [
        "VungleAdapterSDK",
        .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "VungleAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/vungle-adapter/5.9.0/ISVungleAdapter5.9.0.zip",
      checksum: "78dc072bd43d893b73bdab0787c3c365399aa8fecbc6ff07066a6a371e70493d"
    )
  ]
)
