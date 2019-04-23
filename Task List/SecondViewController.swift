//
//  SecondViewController.swift
//  Task List
//
//  Created by Klaus Villaca on 12/8/14.
//  Copyright (c) 2014 Klaus Villaca. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textTask : UITextField!
    @IBOutlet var textDesc : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnAddTask(sender: UIButton) {
        taskMgr.addTaskName(name: textTask.text!, desc: textDesc.text!)
        self.view.endEditing(true)
        textTask.text = ""
        textDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    
    // IOS Touch functions
    func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    // UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

