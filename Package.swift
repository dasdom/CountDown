// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CountDown",
  platforms: [
    .macOS(.v10_15),
    .iOS(.v14),
    .watchOS(.v7),
    .tvOS(.v14)
  ],
  products: [
    .library(
      name: "CountDown",
      targets: ["CountDown"]),
  ],
  targets: [
    .target(
      name: "CountDown",
      dependencies: []),
    .testTarget(
      name: "CountDownTests",
      dependencies: ["CountDown"]),
  ]
)
