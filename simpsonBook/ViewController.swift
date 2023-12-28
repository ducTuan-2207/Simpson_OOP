//
//  ViewController.swift
//  simpsonBook
//
//  Created by macOS on 27/12/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = "Homer"
        return cell
        
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        //Simpson Object
        let homer = Simpson(simpsonName: "s1", simpsonJob: "dev", simpsonImange:UIImage(named: "s1")!)
        let homer1 = Simpson(simpsonName: "s2", simpsonJob: "dev1", simpsonImange:UIImage(named: "s2")!)
        let homer2 = Simpson(simpsonName: "s3", simpsonJob: "dev2", simpsonImange:UIImage(named: "s3")!)
        let homer3 = Simpson(simpsonName: "s4", simpsonJob: "dev3", simpsonImange:UIImage(named: "s4")!)
        let homer4 = Simpson(simpsonName: "s5", simpsonJob: "dev4", simpsonImange:UIImage(named: "a5")!)
               
        let homerArray = [homer,homer1,homer2,homer3,homer4]
        
    }
        
    
}

