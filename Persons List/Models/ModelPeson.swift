//
//  ModelPeson.swift
//  Persons List
//
//  Created by Johnny Boshechka on 12/30/21.
//


struct Person {
    static let dataManager = DataManager.shared

    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
    "\(name) \(surname)"
    }
}

extension Person {
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let name = dataManager.names.shuffled()
        let surname = dataManager.surnames.shuffled()
        let emai = dataManager.emails.shuffled()
        let phoneNumber = dataManager.phones.shuffled()
        
        let iterationCount = min(name.count,
                                 surname.count,
                                 emai.count,
                                 phoneNumber.count)
        
        for index in 0..<iterationCount {
            persons.append(Person(name: name[index],
                                  surname: surname[index],
                                  email: emai[index],
                                  phoneNumber: phoneNumber[index]))
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
