//
//  ViewController.swift
//  FreeTime
//
//  Created by Tyler Anderson on 6/8/19.
//  Copyright © 2019 Tyler Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var contacts : [Person] = Person.listOfExamples()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let thisCell = tableView.dequeueReusableCell(withIdentifier: "contactTableViewCell")
        let curPerson = contacts[indexPath.row]
        thisCell!.textLabel!.text = curPerson.name
        
        return thisCell!
    }
}

