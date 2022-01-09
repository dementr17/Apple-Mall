//
//  Storage.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 08.01.2022.
//

import Foundation

class Storage {
    
    let defaults = IPhone.getIPhones()
    struct Shop   {
        
        let model: String
        let color: String
        let memorySize: Int
        let displaySize: Double
        let price: Int
        
    }
    
//    var iphones: [Shop] {
//        get {
//            
//        }
//        
//        set {
//            
//        }
//    }
}



//import Foundation
//import UIKit
//
//protocol TabViewControllerDelegate {
//    func update(iphone: [IPhone])
//}
//
//class Storage: UIViewController {
//
//    var iPhones = IPhone.getIPhones()
//
//    var iPhonesInside: [IPhone] = [] {
//        didSet {
//            print("iPhonesinside \(iPhonesInside)")
//        }
//    }
//    var iPhonesOutside: [IPhone] = [] {
//        didSet {
//            print("iPhonesOutside \(iPhonesOutside)")
//        }
//    }
//    var iPhonesAll: [IPhone] = [] {
//        didSet {
//            print("iPhonesall \(iPhonesAll)")
//        }
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            guard let destination = segue.destination as? TableViewController else { return }
//            destination.delegateStorage = self
//        }
//}
//
//extension Storage: TabViewControllerDelegate {
//    func update(iphone: [IPhone]) {
//        iPhonesAll = iphone
//    }
//
//}
//:-)
