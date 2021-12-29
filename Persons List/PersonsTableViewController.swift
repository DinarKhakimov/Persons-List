//
//  PersonsTableViewController.swift
//  Persons List
//
//  Created by Johnny Boshechka on 12/30/21.
//

import UIKit

class PersonsTableViewController: UITableViewController {
        
        var persons: [Person]!

        override func viewDidLoad() {
            super.viewDidLoad()

        }

        // MARK: - Table view data source
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            persons.count
        }

       
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

            let nameAndS = persons[indexPath.row]
            
            var content = cell.defaultContentConfiguration()
            content.text = nameAndS.name + " " + nameAndS.surname
            cell.contentConfiguration = content
            return cell
        }
       

       
        // MARK: - Navigation
       
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let personsListDetailsVC = segue.destination as? InfoPerson else { return }
            guard let indexPath = tableView.indexPathForSelectedRow else { return}
            let personInfo = persons[indexPath.row]
            personsListDetailsVC.person = personInfo
        }


    }
