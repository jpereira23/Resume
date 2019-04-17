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
        var contentSize: CGSize = webView.scrollView.contentSize
        var viewSize: CGSize = webView.bounds.size
        
        let rw: Float = Float(viewSize.width / contentSize.width)
        
        webView.scrollView.minimumZoomScale = CGFloat(rw)
        webView.scrollView.maximumZoomScale = CGFloat(rw)
        webView.scrollView.zoomScale = CGFloat(rw)
        
        webView.takeSnapshot(with: nil) {image, error in
            if let image = image{
                let activityViewController: UIActivityViewController = UIActivityViewController(activityItems: [self.createPDF(image: image)], applicationActivities: nil)
                activityViewController.popoverPresentationController?.sourceView=self.view
                self.present(activityViewController, animated: true, completion: nil)
            }
        }
        /*
        let printPageRenderer = CustomPrintPageRenderer()
        
        let printFormatter = UIMarkupTextPrintFormatter(markupText: parseHelper.strHTMLContent)
        
        printPageRenderer.addPrintFormatter(printFormatter, startingAtPageAt: 0)
        
        let pdfData = drawPDFUsingPrintPageRenderer(printPageRenderer: printPageRenderer)
        
        //var docURL = (FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)).last as? NSURL
        
        //pdfFileName = "aPdf.pdf"
        
        //docURL = docURL?.appendingPathComponent(pdfFileName) as! NSURL
        
        //pdfData?.write(to: docURL as! URL, atomically: true)
        
        let activityViewController: UIActivityViewController = UIActivityViewController(activityItems: [pdfData!], applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView=self.view
        present(activityViewController, animated: true, completion: nil)
 
        */
        
    }
    
    func createPDF(image: UIImage) -> NSData{
        let pdfData = NSMutableData()
        let pdfConsumer = CGDataConsumer(data: pdfData as CFMutableData)!
        
        var mediaBox = CGRect.init(x: 0, y: 0, width: webView.scrollView.contentSize.width, height: webView.scrollView.contentSize.height)
        
        let pdfContext = CGContext(consumer: pdfConsumer, mediaBox: &mediaBox, nil)!
        
        pdfContext.beginPage(mediaBox: &mediaBox)
        pdfContext.draw(image.cgImage!, in: mediaBox)
        pdfContext.endPage()
        
        return pdfData
    }
    
}

