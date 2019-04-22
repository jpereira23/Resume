//
//  SectionInfoViewController.swift
//  Resume
//
//  Created by Jeffery Pereira on 4/12/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import UIKit

class SectionInfoViewController: UIViewController {
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var tableView: UITableView!
    let numberOfRows: Int = 1
    
    var aResume: Template!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Work Experience"
        stepper.minimumValue = 1
        stepper.maximumValue = 3
        // Do any additional setup after loading the view.
    }
    

    @IBAction func stepperPressed(_ sender: Any) {
        NSLog("Stepper count is \(stepper.value)")
        tableView.reloadData()
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "sectionToEducation"{
            NSLog("Here is education stuff")
            let anCount: Int = Int(stepper!.value)
            for i in 1...anCount{
                let aCell: SectionTableViewCell = tableView.cellForRow(at: IndexPath.init(row: (i - 1), section: 0)) as! SectionTableViewCell
                let aWork: WorkEx = WorkEx()
                aWork.header = aCell.headerTextField.text!
                aWork.subHeader = aCell.SubheaderTextView.text!
                aResume.works.append(aWork)
            }
            let dest = segue.destination as! EducationInfoViewController
            
            dest.aResume = aResume
        }
        
        if segue.identifier == "sectionToPreview"{
            
            aResume.works = []
            let anCount: Int = Int(stepper!.value)
            for i in 1...anCount{
                let aCell: SectionTableViewCell = tableView.cellForRow(at: IndexPath.init(row: (i - 1), section: 0)) as! SectionTableViewCell
                let aWork: WorkEx = WorkEx()
                aWork.header = aCell.headerTextField.text!
                aWork.subHeader = aCell.SubheaderTextView.text!
                aResume.works.append(aWork)
            }
            let dest = segue.destination as! PreviewViewController
            
            dest.aResume = aResume
        }
    }
    

}

extension SectionInfoViewController: UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(stepper!.value)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aCell", for: indexPath) as! SectionTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 214
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
