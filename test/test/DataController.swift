//
//  DataController.swift
//  test
//
//  Created by Siti Nuraini Binte Azman on 5/2/20.
//  Copyright © 2020 Siti Nuraini Binte Azman. All rights reserved.
//

import Foundation

class DataController {
    // Initialise a static instance of the class (this will be the
    // only instance of that class) inside the class
    static var sharedInstance = DataController()
    
    // Make the initializer private (this prevents creation of other
    // instances of that class)
    private init() {
    }
    
    var items : [String] = []
    var names : [String] = []
    var answers : [String] = []
    var players : [String] = []
    var correct : String = ""
    var index : Int = 0
    
    var count : Int {
        return items.count
    }
    
    func add(item:String) {
        items.append(item)
    }
    
    func retrieve(index:Int) -> String {
        if (index < count) {
            return items[index]
        }
        return ""
    }
    
    func edit(_ index: Int, key: String) {
        items[index] = key
        
    }
    
    func addQn(name:String) {
        names.append(name)
    }
    
    func retrieveQn(index:Int) -> String {
        if (index < names.count) {
            return names[index]
        }
        return ""
    }
    
    func addAnswer(answer: String) {
        answers.append(answer)
    }
    
    func retrieveAns(index:Int) -> String {
        if answers.count >= 0 {
            return answers[0]
        }
        return ""
        
    }
    
    func addPlayer(player: String) {
        players.append(player)
    }
    
    func retrievePlayer(index:Int) -> String {
        if players.count >= 0 {
            return players[0]
        }
        return ""
        
    }
    
    func retrieveList(index: Int) -> String {
        return items[index]
    }
    
    func remove() {
        items.removeAll()
        names.removeAll()
    }
    
} 


