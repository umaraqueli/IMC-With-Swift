//
//  AppRoute.swift
//  IMC
//
//  Created by Raqueli on 19/09/26.
//

enum AppRoute: Hashable {
    case result(name: String, gender: Gender, imc: Double)
    case list
}
