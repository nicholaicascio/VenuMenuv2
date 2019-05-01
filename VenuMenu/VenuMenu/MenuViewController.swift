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
    
    @IBAction func backCamera(_ sender: Any) {
        performSegue(withIdentifier: "backCamera", sender: nil)
    }

    @IBAction func goToOrderButton(_ sender: Any) {
        performSegue(withIdentifier: "toOrder", sender: nil)
    }
    
    
    
    
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
        performSegue(withIdentifier: "showSpecialization", sender: menus[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSpecialization" {
            //the page we are going to is the "SpecializationsViewController"
            if let specialization = segue.destination as? SpecializationsViewController,
                //the sender is the "Item"l" associated with that specific menus[indexPath.row] of the cell we clicked
                let selectedItem: Item = sender as? Item {
                //inside the "SpecializationsViewController" we are setting the "item"
                specialization.item = selectedItem

            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
