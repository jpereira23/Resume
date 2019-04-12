//
//  SectionInfoViewController.swift
//  Resume
//
//  Created by Jeffery Pereira on 4/12/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import UIKit

class SectionInfoViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let numberOfRows: Int = 1
    
    var aResume: Template!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Work Experience"
        
        for i in 0...2{
            var aWorkEx: WorkEx = WorkEx()
            aResume.works.append(aWorkEx)
        }
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        for i in 0...2{
            let aCell: SectionTableViewCell = tableView.cellForRow(at: IndexPath.init(row: i, section: 0)) as! SectionTableViewCell
            
            aResume.works[i].header = aCell.headerTextField.text!
            aResume.works[i].subHeader = aCell.SubheaderTextView.text!
        }
        let dest = segue.destination as! EducationInfoViewController
        
        dest.aResume = aResume
    }
    

}

extension SectionInfoViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
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
}
