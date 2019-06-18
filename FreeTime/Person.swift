//
//  Person.swift
//  FreeTime
//
//  Created by Tyler Anderson on 6/9/19.
//  Copyright © 2019 Tyler Anderson. All rights reserved.
//

import UIKit
import Contacts

enum freeStatus {
    case free, neutral, busy
}

class Person: NSObject {
    let id : Int
    var pic : UIImage?
    var name : String
    var status : freeStatus
    var isFavorite : Bool = false
    
    override init(){
        self.id = 1
        self.name = "William Wallace"
        self.status = .neutral
        super.init()
    }
    
    static func listOfExamples()->[Person]{
        let person1 = Person()
        person1.name = "Judi Anderson"
        person1.isFavorite = true
        person1.status = .free
        let person2 = Person()
        person2.name = "Paul Anderson"
        person2.isFavorite = true
        person2.status = .busy
        let person3 = Person()
        person3.name = "Meng Qi"
        person3.isFavorite = true
        let person4 = Person()
        person4.name = "Drew Anderson"
        person4.status = .free
        let person5 = Person()
        person5.name = "Blake Anderson"
        let person6 = Person()
        
        let personList = [person1, person2, person3, person4, person5, person6]
        return personList
    }
}
