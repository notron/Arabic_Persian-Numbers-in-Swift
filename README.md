# Arabic_Persian-Numbers-in-Swift


[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![Xcode 8.0+](https://img.shields.io/badge/Xcode-8.0-blue.svg?style=flat)](https://developer.apple.com/swift/)
[![Platforms](https://img.shields.io/cocoapods/p/Kingfisher.svg?style=flat)](https://developer.apple.com/)





## Requirements

- iOS 8.0+ / macOS 10.10+ / tvOS 9.0+ / watchOS 2.0+
- Swift 3 , Swift 2.3



With this tutorial can convert Latin numbers to Arabic and Persian numbers in swift





```swift
func arabic(name : String) -> String{
        var sum = ""
        let letters = name.characters.map { String($0) }
        for letter in letters {
            if (Int(letter) != nil) {
                let persianNumber = ["۰","۱","۲","۳","۴","۵","۶","۷","۸","۹"]
                sum = sum+persianNumber[Int("\(letter)")!]
            } else {
                sum = sum+letter
            }
        }
        return sum
    }
    
    // arabic("0123456789") -->  "۰۱۲۳۴۵۶۷۸۹"
    // arabic("3.56") -->  "۳.۵۶"
```

### Contact

Follow and contact me on [Twitter](https://twitter.com/notron021)

## License

MIT license. See the LICENSE file for more info.
