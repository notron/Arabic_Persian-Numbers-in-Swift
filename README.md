# Arabic_Persian-Numbers-in-Swift

<p align="center">
<a href="https://travis-ci.org/onevcat/Kingfisher"><img src="https://img.shields.io/travis/onevcat/Kingfisher/master.svg"></a>
<a href="https://github.com/Carthage/Carthage/"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat"></a>
<a href="https://swift.org/package-manager/"><img src="https://img.shields.io/badge/SPM-ready-orange.svg"></a>
<a href="http://onevcat.github.io/Kingfisher/"><img src="https://img.shields.io/cocoapods/v/Kingfisher.svg?style=flat"></a>
<a href="https://raw.githubusercontent.com/onevcat/Kingfisher/master/LICENSE"><img src="https://img.shields.io/cocoapods/l/Kingfisher.svg?style=flat"></a>
<a href="http://onevcat.github.io/Kingfisher/"><img src="https://img.shields.io/cocoapods/p/Kingfisher.svg?style=flat"></a>

</p>




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
