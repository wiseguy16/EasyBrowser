//
//  ViewController.swift
//  EasyBrowser
//
//  Created by Gregory Weiss on 8/24/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate
{

    @IBOutlet weak var webView: WKWebView!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        let myUrl = URL(string: textField.text!)
        resignFirstResponder()
        let request = URLRequest(url: myUrl!)
        webView.load(request)
        
        
        return true
        
    }


}

