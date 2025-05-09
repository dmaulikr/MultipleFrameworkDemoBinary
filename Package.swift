// swift-tools-version:5.10
import PackageDescription

let package = Package(
  name: "MultipleFrameworkDemoBinary",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "FeatureA", targets: ["CoreKit", "FeatureA"]),
    .library(name: "FeatureB", targets: ["CoreKit", "FeatureB"]),
    .library(name: "FeatureC", targets: ["CoreKit", "FeatureC"]),
  ],
  targets: [
    .binaryTarget(
      name: "CoreKit",
      url: "https://github.com/dmaulikr/MultipleFrameworkDemoBinary/releases/download/1.0.0/CoreKit-1.0.0.zip",
      checksum: "76c829678bc70693f8fba42af58cc4f571053e5a4a5b1a99e4fe8f31c08dd1d0"
    ),
    .binaryTarget(
      name: "FeatureA",
      url: "https://github.com/dmaulikr/MultipleFrameworkDemoBinary/releases/download/1.0.0/FeatureA-1.0.0.zip",
      checksum: "8ffea4c2a45850c1ee5878678c4982c4e1cdfcd24ae194cc949a568869c2d7ac"
    ),
    .binaryTarget(
      name: "FeatureB",
      url: "https://github.com/dmaulikr/MultipleFrameworkDemoBinary/releases/download/1.0.0/FeatureB-1.0.0.zip",
      checksum: "f7aadc33bd766dec73f40da4e926d4620395146ffa4ea38f529e4fc790d30d94"
    ),
    .binaryTarget(
      name: "FeatureC",
      url: "https://github.com/dmaulikr/MultipleFrameworkDemoBinary/releases/download/1.0.0/FeatureC-1.0.0.zip",
      checksum: "717548d3eadffe45e6835dea73dd85b46283c8f6a24c781058a0c20f681907ca"
    ),
  ]
)
