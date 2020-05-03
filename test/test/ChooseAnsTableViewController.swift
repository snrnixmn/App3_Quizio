//
//  ChooseAnsTableViewController.swift
//  test
//
//  Created by Siti Nuraini Binte Azman on 5/2/20.
//  Copyright © 2020 Siti Nuraini Binte Azman. All rights reserved.
//

import UIKit

class ChooseAnsTableViewController: UITableViewController {
    
    let dc = DataController.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dc.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let row = indexPath.row
        
        // display array item in the label
        if let label = cell.textLabel {
            
//            var text = dc.retrieve(index: row)
            label.text = "\(dc.items[row])"
        }
        // reset the cell accessory type first
        cell.accessoryType = .none
        // get the array of IndexPath objects using optional binding
        if let indexPaths = tableView.indexPathsForSelectedRows {
            // check if current indexPath is selected
            if (indexPaths.contains(indexPath)) {
                // selected index path, set accessory type to checkmark
                cell.accessoryType = .checkmark
//                dc.addAnswer(answer: index)
            }
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.reloadData()
        dc.answers.removeAll()
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
        }
        let row = indexPath.row
        dc.addAnswer(answer: "\(dc.items[row])")
    }
    
    @IBAction func actDone(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "backToFirstPage", sender: self)
       }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let identifier = segue.identifier
//          if (identifier == "showDetail") {
//            // get the index path for the selected cell, then pass the
//            // selected item to the next view controller
//            if let indexPath = tableView.indexPathForSelectedRow {
//              let row = indexPath.row
//              let vc = segue.destination as! QuizViewController
//              vc.text = dc.retrieve(index: row)
//            }
//          }
//    }

    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */

    
}
