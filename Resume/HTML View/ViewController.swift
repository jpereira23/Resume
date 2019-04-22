//
//  ViewController.swift
//  Resume
//
//  Created by Jeffery Pereira on 4/6/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import UIKit
import WebKit

class CustomPrintPageRenderer: UIPrintPageRenderer{
    let A4PageWidth: CGFloat = 595.2
    let A4PageHeight: CGFloat = 841.8
}


class ViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    var aResume: Template! = Template()
    var pdfFileName: String = ""
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
        
        
        
        webView.loadHTMLString(parseHelper.strHTMLContent, baseURL: url!)
        //webView.loadRequest(request)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func convertToPDF(_ sender: Any) {
        NSLog(parseHelper.strHTMLContent)
        createPDF(html: parseHelper.strHTMLContent)
    }
    
    func createPDF(html: String){
        
        let render = UIPrintPageRenderer()
        
        render.addPrintFormatter(webView.viewPrintFormatter(), startingAtPageAt: 0)
        
        
        let page = CGRect(x: 0, y: 0, width: 595.2, height: 841.8)
        render.setValue(page, forKey: "paperRect")
        render.setValue(page, forKey: "printableRect")
        
        NSLog("number of pages \(render.numberOfPages)")
        
        
        let pdfData = NSMutableData()
        UIGraphicsBeginPDFContextToData(pdfData, .zero, nil)
        
        for i in 0..<render.numberOfPages{
            NSLog("Hello world")
            UIGraphicsBeginPDFPage();
            render.drawPage(at: i, in: UIGraphicsGetPDFContextBounds())
        }
        
        UIGraphicsEndPDFContext();
        
        guard let outputURL = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("output").appendingPathExtension("pdf") else {
            fatalError("Destination URL not created")
        }
        
        guard nil != (try? pdfData.write(to: outputURL, options: .atomic))
            else { fatalError("Error writing PDF data to file.") }
    }
    
}

