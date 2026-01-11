// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MisakiSwift",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "MisakiSwift",
            targets: ["MisakiSwift"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/ml-explore/mlx-swift",
            from: "0.7.0"
        ),
        .package(
            url: "https://github.com/ml-explore/MLXUtilsLibrary",
            from: "0.1.0"
        )
    ],
    targets: [
        .target(
            name: "MisakiSwift",
            dependencies: [
                .product(name: "MLX", package: "mlx-swift"),
                .product(name: "MLXNN", package: "mlx-swift"),
                .product(name: "MLXUtilsLibrary", package: "MLXUtilsLibrary")
            ]
            // ❌ 注意：没有 resources
        ),
        .testTarget(
            name: "MisakiSwiftTests",
            dependencies: ["MisakiSwift"]
        )
    ]
)
