//
//  AddPlayerViewController.swift
//  test
//
//  Created by user170326 on 5/3/20.
//  Copyright © 2020 Siti Nuraini Binte Azman. All rights reserved.
//

import UIKit

class AddPlayerViewController: UIViewController {

    @IBOutlet weak var outTextfieldPlayer1: UITextField!
    
    let dc = DataController.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ActBtnAddPlayer(_ sender: UIButton) {
        dc.addPlayer(player: outTextfieldPlayer1.text!)
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
