//
//  ParseHelper.swift
//  Resume
//
//  Created by Jeffery Pereira on 4/6/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import UIKit


class ParseHelper{
    typealias Item = (text: String, html: String, className: String)
    var items: [Item] = []
    
    var htmlString: String!
    var strHTMLContent: String!
    
    let sampleNode: SampleOneNode = SampleOneNode()
    
    
    init(){
        //let path = Bundle.main.path(forResource: "sample_one", ofType: "html")
        /*
        do{
            strHTMLContent = try String(contentsOfFile: path!)
            strHTMLContent = stBrHTMLContent.replacingOccurrences(of: "CONTACT INFO", with: "JEFFERY PEREIRA")
            
        
        } catch let error {
            
        }
         */
        
        strHTMLContent = sampleNode.combinedHTML
    }
    
    func setFirstName(name: String){
        sampleNode.setFirstName(name: name)
        
        strHTMLContent = sampleNode.combinedHTML
    }
    
    func setLastName(name: String){
        sampleNode.setLastName(name: name)
        
        strHTMLContent = sampleNode.combinedHTML
    }
    
    func setEmail(email: String){
        sampleNode.setEmail(email: email)
        
        strHTMLContent = sampleNode.combinedHTML
    }
    
    func setNumber(number: String){
        sampleNode.setNumber(number: number)
        
        strHTMLContent = sampleNode.combinedHTML
    }
    
    func setWebsite(website: String){
        sampleNode.setWebsite(website: website)
        
        strHTMLContent = sampleNode.combinedHTML
    }
    
    func setWorkExperienceOne(workExp: String, subOne: String){
        sampleNode.setWorkExperienceOne(expOne: workExp, subOne: subOne)
        
        strHTMLContent = sampleNode.combinedHTML
    }
    
    func setWorkExperienceTwo(workExp: String, subTwo: String){
        sampleNode.setWorkExperienceTwo(expTwo: workExp, subTwo: subTwo)
        
        strHTMLContent = sampleNode.combinedHTML
    }
    
    func setWorkExperienceThree(workExp: String, subThree: String){
        sampleNode.setWorkExperienceThree(expThree: workExp, subThree: subThree)
        
        strHTMLContent = sampleNode.combinedHTML
    }
    
    func setEducationOne(college: String, degree: String){
        sampleNode.setEducationOne(college: college, degree: degree)
        
        strHTMLContent = sampleNode.combinedHTML
    }
    
    func setEducationTwo(college: String, degree: String){
        sampleNode.setEducationTwo(college: college, degree: degree)
        
        strHTMLContent = sampleNode.combinedHTML
    }
    
    func setEducationThree(college: String, degree: String){
        sampleNode.setEducationThree(college: college, degree: degree)
        
        strHTMLContent = sampleNode.combinedHTML
    }
}
