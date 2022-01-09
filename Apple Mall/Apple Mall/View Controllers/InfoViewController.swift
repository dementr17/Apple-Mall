//
//  InfoViewController.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 05.01.2022.
//

import Foundation
import UIKit

class InfoViewController: UIViewController {
    //:-)
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var delegate: TableViewControllerDelegate?
    var iPhoneIVC: IPhone!
    var iPhonesInsideIVC: [IPhone] = [] {
        didSet {
            print("info\(iPhonesInsideIVC)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: iPhoneIVC.model)
        nameLabel.text = iPhoneIVC.model
        infoLabel.text = "Display Size: \(iPhoneIVC.displaySize). Memory Size: \(iPhoneIVC.memorySize). Price \(iPhoneIVC.price)$. Color \(iPhoneIVC.color)."
    }
    
    @IBAction func addCart(_ sender: Any) {
        iPhonesInsideIVC.append(iPhoneIVC)
        delegate?.update(iphone: iPhonesInsideIVC)
    }
}
