// swift-tools-version: 5.7

import PackageDescription

let package = Package(
	name: "swift-HTML",
	products: [
		.library(name: "HTML", targets: ["HTML"]),
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-collections.git", from: "1.1.0"),
	],
	targets: [
		.target(
			name: "HTML",
			dependencies: [
				.product(name: "Collections", package: "swift-collections"),
			],
			path: "HTML"
		),
	]
)
