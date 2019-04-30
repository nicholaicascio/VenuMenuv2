//
//  SpecializationsViewController.swift
//  VenuMenu
//
//  Created by Nicholai Cascio on 4/29/19.
//  Copyright © 2019 Nicholai Cascio. All rights reserved.
//

import UIKit

class SpecializationsViewController: UIViewController {

    var selectedItem2: Item?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let printThis: Item = selectedItem2 as! Item
        print(printThis.ItemName)
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
