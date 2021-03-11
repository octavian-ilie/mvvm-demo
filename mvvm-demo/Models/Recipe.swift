//
//  Recipe.swift
//  mvvm-demo
//
//  Created by Octavian Mihuț Ilie on 11/03/2021.
//

import Foundation

class Recipe: Identifiable, Decodable {
    var id:UUID?
    var name = ""
    var cuisine = ""
}
