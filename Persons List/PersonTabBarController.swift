//
//  PersonTabBarController.swift
//  Persons List
//
//  Created by Johnny Boshechka on 12/30/21.
//

import UIKit

class PersonTabBarController: UITabBarController {
    
    private var persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendInfo()
        
    }
    
    private func sendInfo() {
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                let personsTableVC = navigationVC.topViewController as? PersonsTableViewController
                personsTableVC?.persons = persons
                let personsSectionVC = navigationVC.topViewController as? PersonsSectionTableViewController
                personsSectionVC?.persons = persons
            }
        }
    }
}
