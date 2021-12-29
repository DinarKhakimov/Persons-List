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
    
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        for indexNumber in 0...9 {
            persons.append(Person(name: dataManager.names[indexNumber],
                                  surname: dataManager.surnames[indexNumber],
                                  email: dataManager.emails[indexNumber],
                                  phoneNumber: dataManager.phones[indexNumber]))
        }
        return persons
    }
}


