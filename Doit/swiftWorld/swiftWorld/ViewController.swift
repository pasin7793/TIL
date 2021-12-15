//
//  ViewController.swift
//  swiftWorld
//
//  Created by GSM06 on 2021/07/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var hello: UILabel!
    @IBOutlet var textName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        hello.text = "Hello, " + textName.text!
    }
    
}

