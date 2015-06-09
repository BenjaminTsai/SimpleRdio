//
//  RdioClient.swift
//  SimpleRdio
//
//  Created by Benjamin Tsai on 6/8/15.
//  Copyright (c) 2015 Benjamin Tsai. All rights reserved.
//

import UIKit

class RdioClient: RdioDelegate {
    
    var rdio: Rdio!

    // Just here to facilitate testing
    private let rdioParam1 = "nwtfn7khgrem3pa4a5xp7dw654"
    private let rdioParam2 = "GVA2ujZJ0jvOR0nh9YDSDQ"
    
    init() {
        NSLog("RdioClient init")
        rdio = Rdio(clientId: rdioParam1, andSecret: rdioParam2, delegate: self)
        rdio.logout()
    }
    
    deinit {
        NSLog("RdioClient deinit")
    }
    
    func login(vc: UIViewController) {
        rdio.authorizeFromController(vc)
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
        NSLog("Rdio authorization failed")
    }
    
    func rdioDidLogout() {
        NSLog("Rdio did logout")
    }

    class var sharedInstance: RdioClient {
        struct Static {
            static let instance = RdioClient()
        }
        return Static.instance
    }
}