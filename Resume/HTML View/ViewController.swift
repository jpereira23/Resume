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
        parseHelper.setWorkExperienceOne(workExp: aResume.works[0].header, subOne: aResume.works[0].subHeader)
        parseHelper.setWorkExperienceTwo(workExp: aResume.works[1].header, subTwo: aResume.works[1].subHeader)
        parseHelper.setWorkExperienceThree(workExp: aResume.works[2].header, subThree: aResume.works[2].subHeader)
        parseHelper.setEducationOne(college: aResume.edus[0].school, degree: aResume.edus[0].degree)
        parseHelper.setEducationTwo(college: aResume.edus[1].school, degree: aResume.edus[1].degree)
        parseHelper.setEducationThree(college: aResume.edus[2].school, degree: aResume.edus[2].degree)
        
        webView.loadHTMLString(parseHelper.strHTMLContent, baseURL: url!)
        //webView.loadRequest(request)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

