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
      checksum: "3fe49d0248d4d36377c06f73c1ec9b07146e88696c84d95a98341e41948184d4"
    ),
    .binaryTarget(
      name: "FeatureB",
      url: "https://github.com/dmaulikr/MultipleFrameworkDemoBinary/releases/download/1.0.0/FeatureB-1.0.0.zip",
      checksum: "2ec95735348c2b55bce4ccee67e822eec28a1596dffab8fe3fa4b3a38db4f218"
    ),
    .binaryTarget(
      name: "FeatureC",
      url: "https://github.com/dmaulikr/MultipleFrameworkDemoBinary/releases/download/1.0.0/FeatureC-1.0.0.zip",
      checksum: "717548d3eadffe45e6835dea73dd85b46283c8f6a24c781058a0c20f681907ca"
    ),
  ]
)
