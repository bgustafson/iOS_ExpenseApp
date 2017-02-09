//
//  StartViewController.swift
//  Expense Report
//
//  Created by Gustafson, Brian M. on 5/9/16.
//
//

import UIKit

class StartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    @IBOutlet weak var reportsTable: UITableView!
    var reports = [Report]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addTestData()
    }
    
    
    func addTestData() {
        
        reports.append(Report(name: "Toronto", total: 1000.59, reportid: 1)!)
        reports.append(Report(name: "Chicago", total: 245.59, reportid: 2)!)
        reports.append(Report(name: "Denver", total: 50.09, reportid: 3)!)
        reports.append(Report(name: "Dallas", total: 1200.78, reportid: 4)!)
        reports.append(Report(name: "Houston", total: 803.14, reportid: 5)!)
        reports.append(Report(name: "Miami", total: 1000.59, reportid: 6)!)
        reports.append(Report(name: "Colorado Springs", total: 950.38, reportid: 7)!)
        reports.append(Report(name: "Kansas", total: 710.98, reportid: 8)!)
        reports.append(Report(name: "Orlando", total: 1000.58, reportid: 9)!)
        reports.append(Report(name: "Atlanta", total: 1000.59, reportid: 10)!)
        reports.append(Report(name: "Vancouver", total: 1000.59, reportid: 11)!)
        reports.append(Report(name: "Seattle", total: 1000.59, reportid: 12)!)
        reports.append(Report(name: "Boise", total: 1000.59, reportid: 13)!)
        reports.append(Report(name: "San Diego", total: 1000.59, reportid: 14)!)
        reports.append(Report(name: "Los Angeles", total: 1000.59, reportid: 15)!)
        reports.append(Report(name: "Austin", total: 1000.59, reportid: 16)!)
        reports.append(Report(name: "etroit", total: 1000.59, reportid: 17)!)
        
        self.reportsTable.reloadData()
    }
    
    
    @IBAction func ShowAlert(_ sender: UIButton) {
        let refreshAlert = UIAlertController(title: "Refresh", message: "All data will be lost.", preferredStyle: UIAlertControllerStyle.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            print("Handle Ok logic here")
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
        }))
        
        present(refreshAlert, animated: true, completion: nil)
    }
    
    
    //MARK: - TableViewDelegate Methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reports.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reportCell", for: indexPath)
        let report = reports[indexPath.row]
        
        cell.textLabel?.text = report.Name
        cell.detailTextLabel?.text = "$" + String(format:"%.2f", report.Total)
        
        return cell
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if(segue.identifier == "reportDetail") {
            let dvc = segue.destination as! ReportViewController
            let selectedIndex = self.reportsTable.indexPath(for: sender as! UITableViewCell)
            dvc.ReportID = reports[(selectedIndex?.row)!].ReportID
        }
    }
}
