//
//  Iphone.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 05.01.2022.
//

import Foundation

struct IPhone {
    
    let model: String
    let color: String
    let memorySize: Int
    let displaySize: Double
    let price: Int
    
}

extension IPhone {
    static func getIPhones() -> [IPhone] {
        [
            IPhone(model: "iPhone 7", color: "black", memorySize: 32, displaySize: 4.7, price: 100),
            IPhone(model: "iPhone 7", color: "red", memorySize: 128, displaySize: 4.7, price: 110),
            IPhone(model: "iPhone 7 Plus", color: "black", memorySize: 32, displaySize: 5.5, price: 130),
            IPhone(model: "iPhone 7 Plus", color: "black", memorySize: 128, displaySize: 5.5, price: 140),
            IPhone(model: "iPhone 8", color: "black", memorySize: 32, displaySize: 4.7, price: 130),
            IPhone(model: "iPhone 8", color: "black", memorySize: 128, displaySize: 4.7, price: 140),
            IPhone(model: "iPhone 8 Plus", color: "black", memorySize: 32, displaySize: 5.5, price: 150),
            IPhone(model: "iPhone 8 Plus", color: "black", memorySize: 128, displaySize: 5.5, price: 160),
            IPhone(model: "iPhone X", color: "black", memorySize: 64, displaySize: 5.8, price: 200),
            IPhone(model: "iPhone X", color: "black", memorySize: 256, displaySize: 5.8, price: 250),
            IPhone(model: "iPhone XS", color: "black", memorySize: 64, displaySize: 5.8, price: 300),
            IPhone(model: "iPhone XS", color: "black", memorySize: 256, displaySize: 5.8, price: 350),
            IPhone(model: "iPhone XS", color: "black", memorySize: 512, displaySize: 5.8, price: 370),
            IPhone(model: "iPhone XS Max", color: "black", memorySize: 64, displaySize: 6.5, price: 350),
            IPhone(model: "iPhone XS Max", color: "black", memorySize: 256, displaySize: 6.5, price: 370),
            IPhone(model: "iPhone XS Max", color: "black", memorySize: 512, displaySize: 6.5, price: 399),
            IPhone(model: "iPhone XR", color: "black", memorySize: 64, displaySize: 6.1, price: 560),
            IPhone(model: "iPhone XR", color: "black", memorySize: 128, displaySize: 6.1, price: 600),
            IPhone(model: "iPhone 11", color: "black", memorySize: 64, displaySize: 6.1, price: 600),
            IPhone(model: "iPhone 11", color: "black", memorySize: 128, displaySize: 6.1, price: 630),
            IPhone(model: "iPhone 11", color: "black", memorySize: 256, displaySize: 6.1, price: 650),
            IPhone(model: "iPhone 11 Pro", color: "black", memorySize: 64, displaySize: 5.8, price: 800),
            IPhone(model: "iPhone 11 Pro", color: "black", memorySize: 128, displaySize: 5.8, price: 830),
            IPhone(model: "iPhone 11 Pro", color: "black", memorySize: 256, displaySize: 5.8, price: 850),
            IPhone(model: "iPhone 11 Pro Max", color: "black", memorySize: 64, displaySize: 6.5, price: 900),
            IPhone(model: "iPhone 11 Pro Max", color: "black", memorySize: 256, displaySize: 6.5, price: 950),
            IPhone(model: "iPhone 11 Pro Max", color: "black", memorySize: 512, displaySize: 6.5, price: 1000)
        ]
    }
}
