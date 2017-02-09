//
//  Report.swift
//  Expense Report
//
//  Created by Gustafson, Brian M. on 5/9/16.
//
//

import Foundation


struct Report {
    
    var Name: String = ""
    var Total: Double = 0
    var ReportID: Int = 0
    
    // MARK: Initialization
    
    init?(name: String, total: Double, reportid: Int) {

        // Initialize properties.
        self.Name = name
        self.Total = total
        self.ReportID = reportid
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || reportid < 0 {
            return nil
        }
    }
}