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
        // get the path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            
            // create url object
            let url = URL(fileURLWithPath: path)
            
            // error handling
            do {
                // code that potentially throws an error
                // create data object with the data at the url
                let data = try Data(contentsOf: url)
                
                // parse the data
                let decoder = JSONDecoder()
                
                do {
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    // set unique IDs for each instance
                    for r in recipeData {
                        
                        // set a unique ID for each recipe in the recipeData array
                        r.id = UUID()
                    }
                    
                    // assign the complete data to the published property
                    self.recipes = recipeData
                } catch {
                    // Log that the json file couldn't be decoded
                    print(error)
                }
                
            } catch {
                // execution will come here if an error is thrown
                // handle the error
                print(error)
            }
        }
    }
}
