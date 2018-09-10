//
//  ViewController.swift
//  week2
//
//  Created by NG CHUN KEUNG on 28/5/18.
//  Copyright © 2018 NG CHUN KEUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var counter : Int = 0
    
    @IBOutlet weak var touchCounter: UILabel!
    
    
    @IBAction func lightOnOff(_ sender: UIButton) {
        counter += 1
        touchCounter.text = "\(counter) clicks"
        if sender.tag == 0{
            sender.setImage(UIImage(named:"lightOn"), for: .normal)
            sender.tag = 1
        }
        else {
            sender.setImage(UIImage(named:"lightOff"), for: .normal)
            sender.tag = 0
        }
    }
}
