//
//  Gender.swift
//  IMC
//
//  Created by Raqueli on 19/09/26.
//

enum Gender: String {
    case male = "Male"
    case female = "Female"
    
    var name: String {
        switch self {
        case .male:
            return "Homem"
        case .female:
            return "Mulher"
        }
    }
    
}

