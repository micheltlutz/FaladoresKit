# FaladoresKit

Somos dois amigos que gostamos de programar e reunimos utilitários diversos de Swift para facilitar o desenvolvimento de aplicativos que criamos por lazer.


# Faladores

<a 
    data-amt="50" 
    data-since="05/11/22" 
    href="https://github.com/zionix357">
    <img src="https://avatars.githubusercontent.com/u/5609018?v=4" width="60px">
</a>
<a 
    data-amt="50" 
    data-since="05/11/22" 
    href="https://github.com/micheltlutz">
    <img src="https://avatars.githubusercontent.com/u/536630?v=4" width="60px">
</a>

# Usage

## From Package.swift

```swift
import PackageDescription

let package = Package(
    name: "MyProject",
    products: [
        .library(
            name: "MyProject",
            targets: ["MyProject"]),
    ],
    dependencies: [
        .package(url: "https://github.com/micheltlutz/FaladoreKit", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "MyProject",
            dependencies: ["FaladoreKit"]
    ]
)
```

## From Xcode

![](doc/faladoreskit-xcode.png)
