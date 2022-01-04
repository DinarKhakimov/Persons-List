//
//  Data Manager.swift
//  Persons List
//
//  Created by Johnny Boshechka on 12/30/21.
//

class DataManager {
    static let shared = DataManager()
    
    let names = [
        "Johnn", "Tom", "Steve", "Bob",
        "Ted", "Fred", "Alexander",
        "Jack", "Bill", "Scott"
    ]
    
    let surnames = [
        "Anderson", "Klinton", "Daniels", "Butler",
        "Smith", "Jobs", "Johnson", "Brown",
        "Miller", "Wilson"
    ]
    
    let emails = [
        "00000@gmail.com", "00000@gmail.com", "22222@gmail.com",
        "33333@gmail.com", "44444@gmail.com", "55555@gmail.com",
        "66666@gmail.com", "77777@gmail.com", "88888@gmail.com",
        "99999@gmail.com"
    ]
    
    let phones = [
        "+7(917)777-77-70", "+7(917)777-77-71", "+7(917)777-77-72",
        "+7(917)777-77-73", "+7(917)777-77-74", "+7(917)777-77-75",
        "+7(917)777-77-76", "+7(917)777-77-77", "+7(917)777-77-78",
        "+7(917)777-77-79"
    ]
    
    private init() {}
}
