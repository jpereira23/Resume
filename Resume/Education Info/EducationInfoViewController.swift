//
//  EducationInfoViewController.swift
//  Resume
//
//  Created by Jeffery Pereira on 4/12/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import UIKit

class EducationInfoViewController: UIViewController {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var tableView: UITableView!
    var aResume: Template!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Education Info"
        stepper.minimumValue = 1
        stepper.maximumValue = 3

        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperPressed(_ sender: Any) {
        tableView.reloadData()
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let aCount: Int = Int(stepper!.value)
        for i in 1...aCount{
            let cell: EducationTableViewCell = tableView.cellForRow(at: IndexPath(row: (i - 1), section: 0)) as! EducationTableViewCell
            
            let edu: Edu = Edu()
            edu.school = cell.collegeTextField.text!
            edu.degree = cell.degreeTextField.text!
            aResume.edus.append(edu)
        }
        
        let dest = segue.destination as! HonorInfoViewController
        
        dest.aResume = aResume
        
        
    }

}

extension EducationInfoViewController: UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(stepper!.value)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aCell", for: indexPath) as! EducationTableViewCell
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
