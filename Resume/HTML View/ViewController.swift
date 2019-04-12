//
//  ViewController.swift
//  Resume
//
//  Created by Jeffery Pereira on 4/6/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    
    var aResume: Template! = Template()
    let parseHelper: ParseHelper = ParseHelper()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "sample_one", withExtension:"html")
        //let request = URLRequest(url: url!)
        
        
        
        parseHelper.setFirstName(name: aResume.userInfo.firstName)
        parseHelper.setLastName(name: aResume.userInfo.lastName)
        parseHelper.setEmail(email: aResume.userInfo.email)
        parseHelper.setWebsite(website: aResume.userInfo.website)
        parseHelper.setNumber(number: aResume.userInfo.number)
        
        webView.loadHTMLString(parseHelper.strHTMLContent, baseURL: url!)
        //webView.loadRequest(request)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

