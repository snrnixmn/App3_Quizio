//
//  ViewController.swift
//  test
//
//  Created by Siti Nuraini Binte Azman on 5/2/20.
//  Copyright © 2020 Siti Nuraini Binte Azman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var OutLabelPlayerName: UILabel!
    
    var dc = DataController.sharedInstance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        OutLabelPlayerName.text = "Hello \(dc.retrievePlayer(index: 0)) !"
        
    }
    
    @IBAction func unwind(_ segue:UIStoryboardSegue){
        
    }
    
    
    
}

