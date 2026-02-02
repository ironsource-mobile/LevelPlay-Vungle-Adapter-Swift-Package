// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Vungle-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "VungleAdapter", targets: ["VungleAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", exact: "7.6.3"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/vungle-adapter/5.5.0/ISVungleAdapter5.5.0.zip",
      checksum: "a45fd37e034d08efa537796d35470175d7ccef58559542df2fff5532cbcabda7"
    )
  ]
)
