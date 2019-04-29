//
//  MenuViewController.swift
//  VenuMenu
//
//  Created by Nicholai Cascio on 4/25/19.
//  Copyright © 2019 Nicholai Cascio. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    private let menuCaretaker = MenuCaretaker()
    
    private var menus : [Item]{
        return menuCaretaker.items
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return menus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell")!
        let menu = menus[indexPath.row]
        cell.textLabel!.text = menu.ItemName
        let priceString: String = "\(menu.ItemPrice)"
        cell.detailTextLabel?.text = priceString
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showSpecialization", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
