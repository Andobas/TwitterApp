//
//  TwitterClient.swift
//  Twitter
//
//  Created by Juan Hernandez on 2/9/16.
//  Copyright © 2016 Juan Hernandez. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

let twitterConsumerKey = "E9Mwop8b4Q3XOcfuHe87rAZi1"
let twitterConsumerSecret = "3FoRTPIWoXyzBSv8vIYJDZCRQ1xr5p4fP4pmDn2Akb3GI95m5G"
let twitterBaseUrl = NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1SessionManager {

    class var sharedInstance: TwitterClient {
        struct Static {
            static let instance = TwitterClient(baseURL: twitterBaseUrl, consumerKey: twitterConsumerKey, consumerSecret: twitterConsumerSecret)
        }
        return Static.instance
    }
}
