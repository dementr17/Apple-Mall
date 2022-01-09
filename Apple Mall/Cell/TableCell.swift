//
//  TableCell.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 08.01.2022.
//

import UIKit

protocol TableCellDelegate {
    func buttonTapped()
}

class TableCell: UITableViewCell{

    @IBOutlet weak var iPhoneImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    var index = false
    var iphoneCell: IPhone!
//    var closure: ((IPhone) -> ())?
//    var iphone = IPhone(model: "", color: "", memorySize: 0, displaySize: 0.0, price: 0)
    var iPhonesOutsideCell: [IPhone]!
    var delegate: TableViewControllerDelegate?
    
    func configure(with product: IPhone) {
        iphoneCell = product
        iPhoneImage.image = UIImage(named: product.model)
        nameLabel.text = product.model
        infoLabel.text = "Memory Size: \(product.memorySize). Price: \(product.price)$."
        
    }
    
    @IBAction func appendCart(_ sender: Any) {
        buttonTapped()
//        closure?(iphone)
//        iPhonesOutside.append(iphone)
//        delegate?.tapAppend(iphone: iphone)
        index = true
    }
}

extension TableCell: TableCellDelegate {
    func buttonTapped() {
        
    }
}
