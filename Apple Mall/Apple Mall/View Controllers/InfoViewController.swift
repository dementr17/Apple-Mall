//
//  InfoViewController.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 05.01.2022.
//

import Foundation
import UIKit

class InfoViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var iPhone: IPhone = IPhone(model: "IPhone", color: "black", memorySize: 32, displaySize: 6.1, price: 0)
    var iPhones: [IPhone] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: iPhone.model)
        nameLabel.text = iPhone.model
        infoLabel.text = "Display Size: \(iPhone.displaySize). Memory Size: \(iPhone.memorySize). Price \(iPhone.price). Color \(iPhone.color)."
    }
    
    @IBAction func addCart(_ sender: Any) {
        iPhones.append(iPhone)
    }
}
