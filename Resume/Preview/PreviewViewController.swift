//
//  PreviewViewController.swift
//  Resume
//
//  Created by Jeffery Pereira on 4/22/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import UIKit
import WebKit

class PreviewViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var aResume: Template! = Template()
    let parseHelper: ParseHelper = ParseHelper()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "sample_one", withExtension: "html")
        
        parseHelper.setFirstName(name: aResume.userInfo.firstName)
        parseHelper.setLastName(name: aResume.userInfo.lastName)
        parseHelper.setEmail(email: aResume.userInfo.email)
        parseHelper.setWebsite(website: aResume.userInfo.website)
        parseHelper.setNumber(number: aResume.userInfo.number)
        
        if(aResume.works.count == 1){
            parseHelper.setWorkExperienceOne(workExp: aResume.works[0].header, subOne: aResume.works[0].subHeader)
        } else if(aResume.works.count == 2){
            parseHelper.setWorkExperienceOne(workExp: aResume.works[0].header, subOne: aResume.works[0].subHeader)
            parseHelper.setWorkExperienceTwo(workExp: aResume.works[1].header, subTwo: aResume.works[1].subHeader)
        } else if(aResume.works.count == 3){
            parseHelper.setWorkExperienceOne(workExp: aResume.works[0].header, subOne: aResume.works[0].subHeader)
            parseHelper.setWorkExperienceTwo(workExp: aResume.works[1].header, subTwo: aResume.works[1].subHeader)
            parseHelper.setWorkExperienceThree(workExp: aResume.works[2].header, subThree: aResume.works[2].subHeader)
        }
        
        if(aResume.edus.count == 1){
            parseHelper.setEducationOne(college: aResume.edus[0].school, degree: aResume.edus[0].degree)
        } else if(aResume.edus.count == 2){
            parseHelper.setEducationOne(college: aResume.edus[0].school, degree: aResume.edus[0].degree)
            parseHelper.setEducationTwo(college: aResume.edus[1].school, degree: aResume.edus[1].degree)
        } else if(aResume.edus.count == 3){
            parseHelper.setEducationOne(college: aResume.edus[0].school, degree: aResume.edus[0].degree)
            parseHelper.setEducationTwo(college: aResume.edus[1].school, degree: aResume.edus[1].degree)
            parseHelper.setEducationThree(college: aResume.edus[2].school, degree: aResume.edus[2].degree)
        }
        
        webView.loadHTMLString(parseHelper.strHTMLContent, baseURL: url! )

        // Do any additional setup after loading the view.
    }
    
    @IBAction func popBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
