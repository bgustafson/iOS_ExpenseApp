//
//  ReportViewController.swift
//  Expense Report
//
//  Created by Gustafson, Brian M. on 5/11/16.
//
//

import UIKit

class ReportViewController: UIViewController {
    
    @IBOutlet weak var ReportTitle: UILabel!
    @IBOutlet weak var ReportTotal: UILabel!
    @IBOutlet weak var expenseImage: UIImageView!
    @IBOutlet weak var ExpenseName: UILabel!
    @IBOutlet weak var ExpenseLocation: UILabel!
    @IBOutlet weak var ExpenseValue: UILabel!
    
    var ReportID: Int = 0
    var image: UIImage?
    var items: [ExpenseItem]?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.ReportID)
        
        buildTestData()
    }

    func buildTestData () {
        //TODO: build test items
        self.ReportTitle.text = "Chicago"
        self.ReportTotal.text = "$543.89"

        let expenseItem = ExpenseItem(name: "Lunch", location: "Luke's", cost: 12.30)
        self.ExpenseName.text = "Type: " + (expenseItem?.Name)!
        self.ExpenseLocation.text = "Location: " + (expenseItem?.Location)!
        self.ExpenseValue.text = "Cost: $" + String(format:"%.2f", (expenseItem?.Cost)!)

        print(expenseItem)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
