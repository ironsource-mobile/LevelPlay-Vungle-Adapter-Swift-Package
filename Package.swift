// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Vungle-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "VungleAdapter", targets: ["VungleAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager", exact: "7.7.7"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/vungle-adapter/5.14.0/ISVungleAdapter5.14.0.zip",
      checksum: "8c89d72b3cf751b052625a2774844ce23bbb1d6783f7f12b3351948464e607a8"
    )
  ]
)
