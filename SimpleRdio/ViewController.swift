//
//  ViewController.swift
//  SimpleRdio
//
//  Created by Benjamin Tsai on 6/8/15.
//  Copyright (c) 2015 Benjamin Tsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, RdioDelegate {

    var appDelegate: AppDelegate {
        get { return UIApplication.sharedApplication().delegate as! AppDelegate }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDelegate.rdioInstance.delegate = self
    }

    @IBAction func onLogin(sender: AnyObject) {
        NSLog("onLogin")
        appDelegate.rdioInstance.authorizeFromController(self)
    }
 
    func rdioDidAuthorizeUser(user: [NSObject : AnyObject]!) {
        NSLog("Rdio authorized user")
    }
    
    func rdioDidAuthorizeUser(user: [NSObject : AnyObject]!, withAccessToken accessToken: String!) {
        NSLog("Rdio authorized user with access token")
    }
    
    func rdioAuthorizationCancelled() {
        NSLog("Rdio authorization cancelled")
    }
    
    func rdioAuthorizationFailed(error: NSError!) {
        NSLog("Rdio authorization failed with error: \(error)")
    }
    
    func rdioDidLogout() {
        NSLog("Rdio did logout")
    }
}