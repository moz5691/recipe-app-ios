//
//  RecipeModel.swift
//  ReciepeApp
//
//  Created by Chan Ahn on 10/4/22.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        self.recipes = DataService.getLocalData()
    }
}
