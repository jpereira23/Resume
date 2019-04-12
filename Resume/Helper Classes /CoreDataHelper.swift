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
    private var entity: NSEntityDescription!
    
    init(){
        self.managedContext = self.appDelegate.persistentContainer.viewContext
        self.entity = NSEntityDescription.entity(forEntityName: "Resume", in: self.managedContext)
    }
    
    public func saveData(template: Template){
        let theResume = NSManagedObject(entity: self.entity!, insertInto: self.managedContext)
        
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
            NSLog("Error with managedContext saving")
        }
    }
    
    
    public func loadData() -> [Template]{
        var tempTemplate: [Template] = []
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Resume")
        
        do{
            managedObjects = try self.managedContext!.fetch(fetchRequest)
        } catch let error as NSError {
            NSLog("error loading managedContext")
        }
        
        for temp in managedObjects
        {
            let aResume: Template = Template()
            //let aLocation = location.value(forKeyPath: "location") as! String
            aResume.userInfo.firstName = temp.value(forKeyPath: "firstName") as! String
            aResume.userInfo.lastName = temp.value(forKeyPath: "lastName") as! String
            aResume.userInfo.email = temp.value(forKeyPath: "email") as! String
            
            aResume.userInfo.number = temp.value(forKeyPath: "number") as! String
            
            aResume.userInfo.website = temp.value(forKeyPath: "website") as! String
            
            aResume.date = temp.value(forKeyPath: "date") as! Date
            
            tempTemplate.append(aResume)
        }
        
        return tempTemplate
    }
}
