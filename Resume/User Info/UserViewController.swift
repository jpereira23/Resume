//
//  UserViewController.swift
//  Resume
//
//  Created by Jeffery Pereira on 4/11/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import UIKit

class UserViewController: UIViewController{
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var website: UITextField!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var email: UITextField!
    
    var aResume: Template = Template()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "User Info"
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "userToWork"{
            aResume.userInfo.firstName = firstName.text!
            aResume.userInfo.lastName = lastName.text!
            aResume.userInfo.website = website.text!
            aResume.userInfo.number = number.text!
            aResume.userInfo.email = email.text!
            
            let dest = segue.destination as! SectionInfoViewController
            dest.aResume = aResume
        }
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

extension UserViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
