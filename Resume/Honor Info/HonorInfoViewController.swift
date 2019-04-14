//
//  HonorInfoViewController.swift
//  Resume
//
//  Created by Jeffery Pereira on 4/12/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import UIKit

class HonorInfoViewController: UIViewController {
    
    var aResume: Template!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Honor Info"
        
        NSLog("Amount of works is \(aResume.works.count)")
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveInfo(_ sender: Any) {
        NSLog("Save Info")
        
        var coreHelper = CoreDataHelper()
        
        coreHelper.saveData(template: aResume)
        self.navigationController?.popToRootViewController(animated: false)
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
