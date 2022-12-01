<p>
    <img src="https://img.shields.io/badge/Swift-5-orange.svg" />
    <a href="https://swift.org/package-manager">
        <img src="https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat" alt="Swift Package Manager" />
    </a>
    <img src="https://img.shields.io/badge/platforms-macOS iOS tvOS watchOS-brightgreen.svg?style=flat" alt="Platforms: macOS iOS tvOS watchOS" />
</p>

# ArrayBuilder

A result builder that allows to build arrays with conditions and loops with SwiftUI like syntax.

Inspired by https://gist.github.com/rjchatfield/72629b22fa915f72bfddd96a96c541eb

## Description

The usual way to create arrays with conditions:
```
    var textItems: [String] = []
    textItems.append("Lorem")
    if false {
        textItems.append("Amen")
    }
    if true {
        textItems.append("Ipsum")
    }
    textItems.append("Dolor")
```

Creating arrays with conditions using `ArrayBuilder`:
```
    let textItems: [String] = .init {
        "Lorem"
        if false {
            "Amen"
        }
        if true {
            "Ipsum"
        }
        "Dolor"
    }
```

## Swift Package Manager

This library is a Swift Module and can be added using this URL:
```
https://github.com/WilhelmOks/ArrayBuilder.git
```

`import ArrayBuilder` to use it in your code.
