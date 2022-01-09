//
//  TableViewController.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 05.01.2022.
//

import UIKit

protocol TableViewControllerDelegate {
    func update(iphone: [IPhone])
    func clear(iphone: [IPhone])
}
//:-)
class TableViewController: UITableViewController {
    
    var index = false
    var delegate: TableCellDelegate?
    
    var iPhonesTVC: [IPhone] = IPhone.getIPhones()
   
    var iPhonesInsideTVC: [IPhone] = []
    var iPhonesOutsideTVC: [IPhone] = []
    var iPhonesAllTVC: [IPhone] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setupTableView()
        tableView.rowHeight = 80
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        print("viewDidAppear")
        iPhonesAllTVC += iPhonesInsideTVC
        iPhonesInsideTVC = []
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        iPhonesTVC.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:  TableCell.self)) as! TableCell
        cell.configure(with: iPhonesTVC[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //передача данных на другой экран по действию
        tableView.deselectRow(at: indexPath, animated: true)
        //если сработала ячейка по данному индексу (метод который анимационно убирает выделение ячейки)
        let iphone = iPhonesTVC[indexPath.row]
        routeToInfo(iPhone: iphone)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let buyVC = segue.destination as? BuyViewController {
            buyVC.iPhonesAllBVC = iPhonesAllTVC
        }
//        delegate?.buttonTapped()
//        firstView.addSubview(tableCell)
//        tableCell.delegate = self
        
//        else if let buyTC = segue.destination as? BuyTableCell {
//            buyTC.iphone = ip
//            buyTC.closure = { [weak self] _ in
//                self?.ip = ip
//            }
//        }
    }
    
    @IBAction func goCart(_ sender: Any) {
//        setupNavigationController()
    }
}

private extension TableViewController {
    //Custom Cell
    func setupTableView() {
        registerXibs()
    }
    func registerXibs() {
        tableView.register(UINib(nibName: String(describing:  TableCell.self), bundle: nil), forCellReuseIdentifier: String(describing:  TableCell.self))
    }
}

extension TableViewController: TableViewControllerDelegate {
    /// Перейти на контроллер InfoVC
    func routeToInfo(iPhone: IPhone) {
        // Взять Main.storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // Взять из него viewController с indetifier == "InfoViewController"
        let infoViewController =  storyboard.instantiateViewController(withIdentifier: "InfoViewController") as! InfoViewController
        infoViewController.delegate = self
        infoViewController.iPhoneIVC = iPhone
        // Добавить в стек navigationController-а полученный контроллер
        navigationController?.pushViewController(infoViewController, animated: true)
    }
    
    func update(iphone: [IPhone]) {
        iPhonesInsideTVC = iphone
    }
    func clear(iphone: [IPhone]) {
        iPhonesAllTVC = []
    }
    
//    func tapAppend(iphone: IPhone) {
//        iPhonesOutside.append(ip)
//    }
    
    // FilterVC
    
    //    func setupNavigationController() {
    //        navigationItem.rightBarButtonItem = UIBarButtonItem(systemItem: .search, primaryAction: UIAction(handler: { [weak self]_ in
    //            self?.routeToFilters()
    //        }), menu: nil)
    //    }
}
//:-)
