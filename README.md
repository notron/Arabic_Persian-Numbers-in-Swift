# Arabic_Persian-Numbers-in-Swift


[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![Xcode 8.0+](https://img.shields.io/badge/Xcode-8.0-blue.svg?style=flat)](https://developer.apple.com/swift/)
[![Platforms](https://img.shields.io/cocoapods/p/Kingfisher.svg?style=flat)](https://developer.apple.com/)





## Requirements

- iOS 8.0+ / macOS 10.10+ / tvOS 9.0+ / watchOS 2.0+
- Swift 3 , Swift 2.3



With this tutorial can convert Latin numbers to Arabic and Persian numbers in swift





```swift
    func englishToPersian() -> String{
        var sum = ""
        let letters = self.characters.map { String($0) }
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
    
    func persianToEnglish() -> String{
        var sum = ""
        let letters = self.characters.map { String($0) }
        let persianNumber = ["۰","۱","۲","۳","۴","۵","۶","۷","۸","۹"]
        for letter in letters {
            var isSuccess = false
            for (index, element) in persianNumber.enumerated() {
                if letter == element {
                    sum = sum + "\(index)"
                    isSuccess = true
                }
            }
            if isSuccess != true {
                sum = sum + letter
            }
        }
        return sum
    }
    
        let strEnglish1 = "1234567890"
        strEnglish1.englishToPersian() // ۱۲۳۴۵۶۷۸۹۰

        let strEnglish2 = "1200 toman"
        strEnglish2.englishToPersian() // ۱۲۰۰ toman

        let strPersian1 = "۱۲۳۴۵۶۷۸۹۰"
        strPersian1.persianToEnglish() // 1234567890

        let strPersian2 = "۱۲۰۰  تومان"
        strPersian1.persianToEnglish() // ۱۲۰۰  تومان
```

### Contact

Follow and contact me on [Twitter](https://twitter.com/notron021)

