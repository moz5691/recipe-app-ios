//
//  ContentView.swift
//  ReciepeApp
//
//  Created by Chan Ahn on 10/4/22.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    var body: some View {
        NavigationView {
            List(model.recipes) {
                r in
                NavigationLink(destination: RecipeDetailView(recipe: r)) {
                    HStack(spacing: 20.0) {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .cornerRadius(10)
                        Text(r.name)
                    }
                }
            }
            .navigationBarTitle("All Recipes")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
