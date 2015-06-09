//
//  RdioClient.swift
//  SimpleRdio
//
//  Created by Benjamin Tsai on 6/8/15.
//  Copyright (c) 2015 Benjamin Tsai. All rights reserved.
//

import UIKit

class RdioClient: RdioDelegate {
    
    private var rdio: Rdio!

    private let rdioClientId = ""
    private let rdioClientSecret = ""
    
    init() {
        rdio = Rdio(clientId: rdioClientId, andSecret: rdioClientSecret, delegate: self)
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
