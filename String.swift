//
//  String.swift
//  SnappFood
//
//  Created by Mahdi on 7/20/18.
//  Copyright © 2018 ZoodFood Mac. All rights reserved.
//

import Foundation

extension String {
    
    
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
    
}







