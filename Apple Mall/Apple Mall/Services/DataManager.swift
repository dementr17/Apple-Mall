//
//  DataManager.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 05.01.2022.
//

import Foundation
class DataManager {

    static let shared = DataManager()
    
    var models = [
        "John", "Aaron", "Tim", "Ted",
        "Steven", "Sharon", "Nicola",
        "Allan", "Bruce", "Carl"
    ]
    
    
    private init() {}
}
