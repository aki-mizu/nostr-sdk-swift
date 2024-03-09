// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "nostr-sdk-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v14),
    ],
    products: [
        .library(name: "NostrSDK", targets: ["nostr_sdkFFI", "NostrSDK"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/master/nostr_sdkFFI.xcframework.zip", checksum: "8ede44d209fa7f52454d061d43015e763d91696af6d5c63500efdddd04600fda"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
