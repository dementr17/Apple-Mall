//
//  TableViewController.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 05.01.2022.
//

import UIKit

protocol TableViewControllerDelegate {
    func update(iphone: [IPhone])
}

class TableViewController: UITableViewController {
    
    var iPhones = IPhone.getIPhones()
    var iPhonesBuy: [IPhone] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        iPhones.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let iPhone = iPhones[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = iPhone.model
        content.image = UIImage(named: iPhone.model)
        content.imageProperties.cornerRadius = tableView.rowHeight / 10
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let infoVC = segue.destination as? InfoViewController else { return }
            infoVC.delegate = self
            infoVC.iPhone = iPhones[indexPath.row]
            infoVC.iPhoness = iPhonesBuy
        } else if let buyVC = segue.destination as? BuyViewController {
            buyVC.buyIphones = iPhonesBuy
        }

}
    
    @IBAction func goCart(_ sender: Any) {
    }
}

extension TableViewController: TableViewControllerDelegate {
    func update(iphone: [IPhone]) {
        iPhonesBuy = iphone
    }
}
