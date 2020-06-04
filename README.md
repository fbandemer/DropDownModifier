# Drop-In/Fly-In Animation Modifier for SwiftUI

[![Swift Version](https://img.shields.io/badge/Swift-5.1-orange.svg)](https://swift.org/blog/5-1-release-process/)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-✔-brightgreen.svg)](https://github.com/apple/swift-package-manager)

This modifier allows creates a beautiful looking drop-in/fly-in effect in SwiftUI.

[![Example on Youtube](https://img.youtube.com/vi/YznEDxQDNVM/0.jpg)](https://www.youtube.com/watch?v=YznEDxQDNVM)

This library requires Swift 5.1 and Xcode 11.

## Requirements

- iOS 13.0+ / macOS 10.15+ / tvOS 13.0+ / watchOS 6.0+
- Xcode 11+
- Swift 5.1+

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is now integrated in Xcode 11.

Once you have your Swift package set up, adding DropDownModifier as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/fbandemer/DropInModifier.git")
]
```

## Features

- [x] Custom animation delay
- [x] Custom offset

## Usage Example

```swift
struct OrbitalSlider: View {
    @State var showOrbitals : Bool = false
    
    var body: some View {
        HStack(spacing: 15) {
            MiniCircle(filled: .constant(true), width: 50 * Constants.scaling)
                .dropDownEffect(show: showOrbitals, delay: 0, offset: 30)
            MiniCircle(filled: .constant(true), width: 50 * Constants.scaling)
                .dropDownEffect(show: showOrbitals, delay: 0.3, offset: 15)
            ProgressCircle(width: 60 * Constants.scaling, withOrbit: true, delay: 1.7)
                .dropDownEffect(show: showOrbitals, delay: 0.6, offset: 0)
            MiniCircle(filled: .constant(false), width: 50 * Constants.scaling)
                .dropDownEffect(show: showOrbitals, delay: 0.9, offset: -15)
            MiniCircle(filled: .constant(false), width: 50 * Constants.scaling)
                .dropDownEffect(show: showOrbitals, delay: 1.2, offset: -30)
        }.onAppear {
            self.showOrbitals.toggle()
        }
    }
}
```

