//
//  ViewController.swift
//  Persons List
//
//  Created by Johnny Boshechka on 12/30/21.
//

import UIKit

class InfoPerson: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(person.name) \(person.surname)"
        phoneLabel.text = "\(person.phoneNumber)"
        emailLabel.text = "\(person.email)"
    }
}

