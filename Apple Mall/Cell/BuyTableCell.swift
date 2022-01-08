//
//  TableCell.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 08.01.2022.
//

import UIKit

class BuyTableCell: UITableViewCell {

    @IBOutlet weak var iPhoneImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    var iphone: IPhone!
    var iPhonesAll: [IPhone] = []
    var delegate: TableViewControllerDelegate?
    
    func configure(with product: IPhone) {
        iphone = product
        iPhoneImage.image = UIImage(named: product.model)
        nameLabel.text = product.model
        infoLabel.text = "Memory Size: \(product.memorySize). Price: \(product.price)$."
        
    }
    @IBAction func appendCart(_ sender: Any) {
        iPhonesAll.append(iphone)
        delegate?.update(iphone: iPhonesAll
        )
    }
}
