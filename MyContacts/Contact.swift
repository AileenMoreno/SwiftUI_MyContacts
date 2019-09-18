//
//  Contact.swift
//  MyContacts
//
//  Created by Aileen Gabriela Moreno Perez on 8/11/19.
//  Copyright © 2019 Aileen Gabriela Moreno Perez. All rights reserved.
//

import SwiftUI

struct Contact: Identifiable  {
    let id = UUID()
    var name: String
    var lastName: String
    var nickname: String
    var pod: POD
    var imageName: String { return "\(name.lowercased())_\(lastName.lowercased())" }
}

enum POD: String {
    case web = "Web"
    case mobile = "Mobile"
    case gaming = "Gaming"
    case AI = "Artificial Intelligence"
    case machineLearning = "Machine Learning"
    case clouding = "Clouding"
}


let globantContacts =  [
    Contact(name: "Rosa", lastName: "Lobos", nickname: "Rosita", pod: .clouding),
    Contact(name: "Nicolas", lastName: "Sepulveda", nickname: "Nico", pod: .web),
    Contact(name: "Camila", lastName: "Urrutia", nickname: "Cami", pod: .mobile),
    Contact(name: "Daniela", lastName: "Perez", nickname: "Dani", pod: .machineLearning),
    Contact(name: "Carlos", lastName: "Cordoba", nickname: "Carlitos", pod: .mobile),
    Contact(name: "Pedro", lastName: "Molina", nickname: "Pedro", pod: .mobile),
    Contact(name: "Miguel", lastName: "Saavedra", nickname: "Migue", pod: .clouding),
    Contact(name: "Romina", lastName: "Villanueva", nickname: "Romi", pod: .machineLearning),
    Contact(name: "Felipe", lastName: "Correira", nickname: "Felipe", pod: .clouding)
]
