# Arabic_Persian-Numbers-in-Swift
With this tutorial can convert Latin numbers to Arabic and Persian numbers in swift

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
