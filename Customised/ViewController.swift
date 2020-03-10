//
//  ViewController.swift
//  Customised
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    lazy var personList : [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }

private func getData()
{
    personList.removeAll()
    personList.append(Person(personId: "p01", firstName: "Jyothi", lastName: "Thomas", gender: "Female", salasry: 1000))
    personList.append(Person(personId: "p02", firstName: "James", lastName: "Thomas", gender: "Male", salasry: 1040))
    personList.append(Person(personId: "p01", firstName: "Annos", lastName: "James", gender: "Female", salasry: 100))
    }
    
    
}
extension ViewController: UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as! PersonTableViewCell
        let person = personList[indexPath.row]
        cell.lblFName.text = person.firstName
        cell.lblLName.text = person.lastName
        cell.lblSalary.text = "$ \(person.salasry)"
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100.0)
    }
    
    
}

