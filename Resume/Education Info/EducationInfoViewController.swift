//
//  EducationInfoViewController.swift
//  Resume
//
//  Created by Jeffery Pereira on 4/12/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import UIKit

class EducationInfoViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var aResume: Template!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...2{
            var anE: Edu = Edu()
            
            aResume.edus.append(anE)
        }
        
        self.navigationItem.title = "Education Info"

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        for i in 0...2{
            let cell: EducationTableViewCell = tableView.cellForRow(at: IndexPath(row: i, section: 0)) as! EducationTableViewCell
            
            aResume.edus[i].school = cell.collegeTextField.text!
            aResume.edus[i].degree = cell.degreeTextField.text!
        }
        
        let dest = segue.destination as! HonorInfoViewController
        
        dest.aResume = aResume
        
        
    }

}

extension EducationInfoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
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
}
