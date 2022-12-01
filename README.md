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

## Usage

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

Also supports switch case and for loops:
```
    let textItems: [String] = .init {
        "Lorem"
        
        switch number {
        case 5:
            "Ipsum"
        default:
            Void()
        }
        
        for number in 0...2 {
            "\(number)"
        }
        
        "Dolor"
    }
```

Using in a function that returns an array:
```
    @ArrayBuilder<String> func textItems() -> [String] {        
        "Lorem"
        if true {
            "Ipsum"
        }
        "Dolor"
    }
```
```
    let array = textItems()
```

Using in a function that takes an array as a parameter:
```
    func numberOfItems(@ArrayBuilder<String> _ array: () -> [String]) -> Int {
        return array().count
    }
```
```
    let count = numberOfItems {
        "Lorem"
        if false {
            "Amen"
        }
        if true {
            "Ipsum"
        }
        "Dolor"
    }
    // count == 3
```

## Swift Package Manager

This library is a Swift Module and can be added using this URL:
```
https://github.com/WilhelmOks/ArrayBuilder.git
```

`import ArrayBuilder` to use it in your code.
