//
//  OrderViewController.swift
//  VenuMenu
//
//  Created by Nicholai Cascio on 4/29/19.
//  Copyright © 2019 Nicholai Cascio. All rights reserved.
//

import UIKit
import Foundation

class OrderViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //list is the "Order" singleton
    public var list = Order.order
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    
    private var orders: [Item]{
        return list.items
        //loading the list into "orders"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set the total label text
        totalLabel.text = "Total $\(list.GetOrderTotal())"
        // Do any additional setup after loading the view.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell")!
        let order = orders[indexPath.row]
        cell.textLabel!.text = order.ItemName
        let priceString: String = "\(order.ItemPrice)"
        cell.detailTextLabel?.text = priceString
        return cell
        //this is simply setting the cells to show what is in the list
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
