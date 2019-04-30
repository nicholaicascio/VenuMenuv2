//
//  ResponsesViewController.swift
//  VenuMenu
//
//  Created by Nicholai Cascio on 4/30/19.
//  Copyright © 2019 Nicholai Cascio. All rights reserved.
//

import UIKit
import AVFoundation

class ResponsesViewController: UIViewController {

    @IBOutlet weak var textField: UITextView!
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    var myYes = AVSpeechUtterance(string: "")
    var myNo = AVSpeechUtterance(string: "")
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func yesButton(_ sender: Any) {
        myYes = AVSpeechUtterance(string: "yes")
        myYes.rate = 0.5
        synth.speak(myYes)
    }
    
    @IBAction func noButton(_ sender: Any) {
        myNo = AVSpeechUtterance(string: "no")
        myNo.rate = 0.5
        synth.speak(myNo)
    }
    
    @IBAction func readButton(_ sender: Any) {
        myUtterance = AVSpeechUtterance(string: textField.text)
        myUtterance.rate = 0.5
        synth.speak(myUtterance)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
