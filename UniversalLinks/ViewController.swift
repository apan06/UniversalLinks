//
//  ViewController.swift
//  testWKWebView
//
//  Created by Michał Apanowicz on 01/02/16.
//  Copyright © 2016 Michał Apanowicz. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    var webView:WKWebView?
    @IBOutlet var webViewContainer:UIView?
    @IBOutlet var uiWebView:UIWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let config = WKWebViewConfiguration()
        self.webView = WKWebView(frame: self.webViewContainer!.bounds, configuration: config)
        self.webViewContainer!.addSubview(self.webView!)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.loadHTML()
    }
    
    func loadHTML() {
        self.webView?.loadHTMLString("<html><head></head><body><a href=\"https://www.twitter.com\">Twitter</a></body></html>", baseURL:nil)
        self.uiWebView!.loadHTMLString("<html><head></head><body><a href=\"https://www.twitter.com\">Twitter</a></body></html>", baseURL: nil)
    }
    
}



