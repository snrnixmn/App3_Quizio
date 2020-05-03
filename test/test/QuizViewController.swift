//
//  QuizViewController.swift
//  test
//
//  Created by Siti Nuraini Binte Azman on 5/2/20.
//  Copyright © 2020 Siti Nuraini Binte Azman. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var text : String = ""
    
    var dc = DataController.sharedInstance
    
    @IBOutlet weak var outLabelQns: UILabel!
    @IBOutlet weak var outLabelResult: UILabel!
    @IBOutlet weak var pickerViewAns: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerViewAns.delegate = self
        pickerViewAns.dataSource = self
        
        // Do any additional setup after loading the view.
        let text = dc.retrieveQn(index: 0)
        
        outLabelQns.text = text
    }
    
    
    @IBAction func resultsBtn(_ sender: UIButton) {
        
        let r = dc.answers[0]
        let result = pickerViewAns.selectedRow(inComponent: 0)
        
        if r == dc.items[result]  {
            outLabelResult.text = "Correct!"
            
        } else {
            outLabelResult.text = "Wrong!"
        }
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dc.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dc.items[row]
    }
    
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
