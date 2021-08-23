//
//  Employee.swift
//  MVC
//
//  Created by Muhammad Ali on 23/08/2021.
//

import Foundation

class Employee{
    var emp_Code: String = ""
    var emp_Name: String = ""
    var emp_Designation: String = ""
    
    init(code:String, name: String, des: String) {
        self.emp_Code = code
        self.emp_Name = name
        self.emp_Designation = des
    }
    
    func getName() -> String  {
        return self.emp_Name
    }
    
    func getCode() -> String {
        return self.emp_Code
    }
    
    func getDesignation() -> String {
        return self.emp_Designation
    }
    
}

