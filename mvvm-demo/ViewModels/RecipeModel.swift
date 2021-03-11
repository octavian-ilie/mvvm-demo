//
//  RecipeModel.swift
//  mvvm-demo
//
//  Created by Octavian Mihuț Ilie on 11/03/2021.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        // create dymmy recipe data
        recipes.append(Recipe(name: "Spaghetti", cuisine: "Italian"))
        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
    }
    
    func addRecipe() {
        recipes.append(Recipe(name: "Burger", cuisine: "American"))
    }
    
}
