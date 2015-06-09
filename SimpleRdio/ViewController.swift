//
//  ViewController.swift
//  SimpleRdio
//
//  Created by Benjamin Tsai on 6/8/15.
//  Copyright (c) 2015 Benjamin Tsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onLogin(sender: AnyObject) {
        NSLog("onLogin")
        RdioClient.sharedInstance.login(self)
    }
    
}

