// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Down",
    products: [
    .library(
        name: "Down",
        targets: ["Down"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "libcmark",
            dependencies: [],
            path: "Source/cmark",
            exclude: ["include"],
            publicHeadersPath: "./"),
        .target(
            name: "Down",
            dependencies: ["libcmark"],
            path: "Source/",
            exclude: ["cmark", "Down.h"]),
        .testTarget(
            name: "DownTests",
            dependencies: ["Down"],
            path: "Tests/",
            exclude: ["Fixtures", "DownViewTests.swift"]),
    ]
)
