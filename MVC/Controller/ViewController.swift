//
//  ViewController.swift
//  MVC
//
//  Created by Muhammad Ali on 23/08/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK:- MVC Explanation
    // View :- Button, TextField visible on screen
    // View Controller :- Code Written for View
    
    /* User Tap on View
     - View will communication with ViewController
     - ViewController will ask to Model for data
     - Model will return the data to ViewController
     - ViewController will pass the data to View
     - Data is visilbe to User as per his request
     */
    
    @IBOutlet weak var emp_Code: UITextField!
    @IBOutlet weak var emp_Name: UITextField!
    @IBOutlet weak var emp_Designation: UITextField!
    
    @IBOutlet weak var lblEmp_Code: UILabel!
    @IBOutlet weak var lblEmp_Name: UILabel!
    @IBOutlet weak var lblEmp_Designation: UILabel!
    
//    var emp_Dic: Employee = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnShow(_ sender: Any) {
        self.saveAndShowEmployee()
        
    }
    
    func saveAndShowEmployee()  {
        let code =  self.emp_Code.text ?? "+923312611993"
        let name = self.emp_Name.text ?? "Muhammad Ali"
       let designation = self.emp_Designation.text ?? "Developer"
   
        /* Store the data to Model to Ensure MVC */
        let emp_Dic = Employee(code: code, name: name, des: designation)
        
        lblEmp_Code.text = "Code: \(emp_Dic.getCode())"
        lblEmp_Name.text = "Name: \(emp_Dic.getName())"
        lblEmp_Designation.text = "Designation: \(emp_Dic.getDesignation())"
        
    
    }
    
}

