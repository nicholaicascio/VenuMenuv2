//
//  SpecializationsViewController.swift
//  VenuMenu
//
//  Created by Nicholai Cascio on 4/29/19.
//  Copyright © 2019 Nicholai Cascio. All rights reserved.
//

import UIKit

class SpecializationsViewController: UIViewController {

    var item: Item?
    public let orderList = Order.order
    //inside 'item" the MenuViewController stores the selected item
    //orderList is the singleton "Order"
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBAction func addButton(_ sender: Any) {
        orderList.AddItem(item: item!)
        performSegue(withIdentifier: "orderBack", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(item!.ItemName)
        nameLabel.text = item!.ItemName
        descriptionLabel.text = item!.Description
//        priceLabel.text = "\(item!.ItemPrice)"
        priceLabel.text = item!.DisplayPrice()
        // Do any additional setup after loading the view.
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
