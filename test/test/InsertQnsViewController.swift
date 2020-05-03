//
//  InsertQnsViewController.swift
//  test
//
//  Created by Siti Nuraini Binte Azman on 5/2/20.
//  Copyright © 2020 Siti Nuraini Binte Azman. All rights reserved.
//

import UIKit

class InsertQnsViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var qnTextField: UITextField!
    @IBOutlet weak var ansTextField: UITextField!
    @IBOutlet weak var ansTextField2: UITextField!
    @IBOutlet weak var ansTextField3: UITextField!
    @IBOutlet weak var ansTextField4: UITextField!
    
    let dc = DataController.sharedInstance
    
    var activetf : UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ansTextField.delegate = self
        ansTextField2.delegate = self
        ansTextField3.delegate = self
        ansTextField2.delegate = self
        
        
    }
    @IBAction func submitBtn(_ sender: UIButton) {
        
        if (activetf != nil) {
            activetf.resignFirstResponder()
        }
        dc.remove()
        dc.add(item: ansTextField.text!)
        dc.add(item: ansTextField2.text!)
        dc.add(item: ansTextField3.text!)
        dc.add(item: ansTextField4.text!)
        dc.addQn(name: qnTextField.text!)
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        activetf = textField
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        activetf = nil
        
    }
    
    
}
