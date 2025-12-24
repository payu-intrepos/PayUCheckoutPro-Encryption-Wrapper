// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PayUIndia-CP-Encryption-SDK",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PayUIndia-CP-Encryption-SDK",
            targets: ["PayUIndia-CP-Encryption-SDKTarget"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "PayUCheckoutProKit",url: "https://github.com/payu-intrepos/PayUCheckoutPro-iOS",from: "9.0.0")
    ],
    targets: [
        
        .target(
            name: "PayUIndia-CP-Encryption-SDKTarget",
            dependencies: [
                "CPBharakoshWrapperiOS",
                .product(name: "PayUCheckoutProKit", package: "PayUCheckoutProKit"),
            ],
            path: "PayUIndia-CP-Encryption-SDKWrapper"
        ),
        
        .binaryTarget(name: "CPBharakoshWrapperiOS", path: "./CPBharakoshWrapperiOS.xcframework"),
    ]
)
