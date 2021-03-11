//
//  ContentView.swift
//  mvvm-demo
//
//  Created by Octavian Mihuț Ilie on 11/03/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = RecipeModel()
    var body: some View {
        VStack {
            List(model.recipes) { r in
                VStack(alignment: .leading) {
                    Text(r.name)
                        .font(.title)
                    Text(r.cuisine)
                }
            }
            Button("Add Recipe") {
                print("tapped")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
