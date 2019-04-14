//
//  CoreDataHelper.swift
//  Resume
//
//  Created by Jeffery Pereira on 4/12/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import UIKit
import CoreData


class CoreDataHelper{
    private var managedObjects = [NSManagedObject]()
    private var appDelegate = UIApplication.shared.delegate as! AppDelegate
    private var managedContext: NSManagedObjectContext!
    private var resumeEntity: NSEntityDescription!
    private var workExEntity: NSEntityDescription!
    private var eduEntity: NSEntityDescription!
    
    init(){
        self.managedContext = self.appDelegate.persistentContainer.viewContext
        self.resumeEntity = NSEntityDescription.entity(forEntityName: "Resume", in: self.managedContext)
        self.workExEntity = NSEntityDescription.entity(forEntityName: "WorkExperience", in: self.managedContext)
        self.eduEntity = NSEntityDescription.entity(forEntityName: "Education", in: self.managedContext)
    }
    
    public func saveData(template: Template){
        let theResume = NSManagedObject(entity: self.resumeEntity!, insertInto: self.managedContext)
        
        
        theResume.setValue(template.date, forKeyPath: "date")
        theResume.setValue(template.userInfo.email, forKeyPath: "email")
        theResume.setValue(template.userInfo.firstName, forKeyPath: "firstName")
        theResume.setValue(template.userInfo.lastName, forKeyPath: "lastName")
        theResume.setValue(template.userInfo.number, forKeyPath: "number")
        theResume.setValue(template.userInfo.website, forKeyPath: "website")
        
        do{
            try self.managedContext.save()
            managedObjects.append(theResume)
        } catch let error as NSError{
            NSLog(error.localizedDescription)
        }
        
        saveWorks(works: template.works, date: template.date)
        saveCollege(edus: template.edus, date: template.date)
    }
    
    private func saveWorks(works: [WorkEx], date: Date){
        for work in works{
            let theWorkExperience = NSManagedObject(entity: self.workExEntity!, insertInto: self.managedContext)
            
            theWorkExperience.setValue(date, forKeyPath: "date")
            theWorkExperience.setValue(work.header, forKeyPath: "header")
            theWorkExperience.setValue(work.subHeader, forKeyPath: "subHeader")
            
            do{
                try self.managedContext.save()
            } catch let error as NSError{
                NSLog(error.localizedDescription)
            }
        }
    }
    
    private func saveCollege(edus: [Edu], date: Date){
        for edu in edus{
            let theEdu = NSManagedObject(entity: self.eduEntity!, insertInto: self.managedContext)
            
            theEdu.setValue(date, forKeyPath: "date")
            theEdu.setValue(edu.school, forKeyPath: "college")
            theEdu.setValue(edu.degree, forKeyPath: "degree")
            
            do{
                try self.managedContext.save()
            } catch let error as NSError{
                NSLog(error.localizedDescription)
            }
        }
    }
    
    
    public func loadData() -> [Template]{
        var tempTemplate: [Template] = []
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Resume")
        
        do{
            managedObjects = try self.managedContext!.fetch(fetchRequest)
        } catch let error as NSError {
            NSLog(error.localizedDescription)
        }
        
        for temp in managedObjects
        {
            let aResume: Template = Template()
            //let aLocation = location.value(forKeyPath: "location") as! String
            aResume.userInfo.firstName = (temp.value(forKeyPath: "firstName") as! String)
            aResume.userInfo.lastName = (temp.value(forKeyPath: "lastName") as! String)
            aResume.userInfo.email = (temp.value(forKeyPath: "email") as! String)
            
            aResume.userInfo.number = (temp.value(forKeyPath: "number") as! String)
            
            aResume.userInfo.website = (temp.value(forKeyPath: "website") as! String)
            
            aResume.date = (temp.value(forKeyPath: "date") as! Date)
            
            
            tempTemplate.append(aResume)
        }
        
        let fetchRequest1 = NSFetchRequest<NSManagedObject>(entityName: "WorkExperience")
        
        do{
            managedObjects = try self.managedContext!.fetch(fetchRequest1)
        } catch let error {
            NSLog(error.localizedDescription)
        }
        
        for temp in managedObjects{
            let aDate = (temp.value(forKeyPath: "date") as! Date)
            let aTemplate = tempTemplate.filter{ $0.date == aDate }.first
            let workExp: WorkEx = WorkEx()
            workExp.header = (temp.value(forKeyPath: "header") as! String)
            workExp.subHeader = (temp.value(forKeyPath: "subHeader") as! String)
            aTemplate!.works.append(workExp)
        }
        
        let fetchRequest2 = NSFetchRequest<NSManagedObject>(entityName: "Education")
        
        do{
            managedObjects = try self.managedContext!.fetch(fetchRequest2)
        } catch let error {
            NSLog(error.localizedDescription)
        }
        
        for temp in managedObjects{
            let aDate = (temp.value(forKeyPath: "date") as! Date)
            let aTemplate = tempTemplate.filter { $0.date == aDate }.first
            let eduSection: Edu = Edu()
            eduSection.degree = (temp.value(forKeyPath: "degree") as! String)
            eduSection.school = (temp.value(forKeyPath: "college") as! String)
            aTemplate!.edus.append(eduSection)
        }
        
        return tempTemplate
    }
    
    public func resetCoreData()
    {
        let fetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Resume")
        let request = NSBatchDeleteRequest(fetchRequest: fetch)
        
        do {
            _ = try self.managedContext.execute(request)
        } catch let error as NSError {
            print("Could not save. \(error). \(error.userInfo)")
        }
        
        let fetch1 = NSFetchRequest<NSFetchRequestResult>(entityName: "WorkExperience")
        let request1 = NSBatchDeleteRequest(fetchRequest: fetch1)
        
        do {
            _ = try self.managedContext.execute(request1)
        } catch let error as NSError {
            print("Could not save. \(error). \(error.userInfo)")
        }
        
        let fetch2 = NSFetchRequest<NSFetchRequestResult>(entityName: "Education")
        let request2 = NSBatchDeleteRequest(fetchRequest: fetch2)
        
        do {
            _ = try self.managedContext.execute(request2)
        } catch let error as NSError {
            print("Could not save. \(error). \(error.userInfo)")
        }
    }
}
