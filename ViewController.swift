//
//  ViewController.swift
//  Datastore
//
//  Created by Laverene Lopez on 04/07/19.
//  Copyright © 2019 Laverene Lopez. All rights reserved.
//

import UIKit
class StudentData
{
    var name:String?
    var age:Int?
    var rollNo:Int?
    var subject:String?
    var mark: Int?
    
}
class ViewController: UIViewController {

    @IBOutlet weak var nametxt: UITextField!
    @IBOutlet weak var agetxt: UITextField!
    @IBOutlet weak var rollnotxt: UITextField!
    
    @IBOutlet weak var subjecttxt: UITextField!
    @IBOutlet weak var marktxt: UITextField!
    
    
    //let data = Data()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
              // Do any additional setup after loading the view.
        
    }
    

    @IBAction func AddStudent(_ sender: UIButton)
    {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let student = StudentData()
        student.name = nametxt.text!
        student.age = Int(agetxt.text!)
        student.rollNo =  Int(rollnotxt.text!)
        student.subject = subjecttxt.text!
        student.mark = Int(marktxt.text!)
        appDelegate .getstudent(student: student)
        nametxt.text=" "
        agetxt.text=" "
        rollnotxt.text=" "
        subjecttxt.text=" "
        marktxt.text=" "
    }
    
    @IBAction func vbutton(_ sender: Any)
    {
    let appDelegat = UIApplication.shared.delegate as! AppDelegate
        appDelegat.view()
    }

}
