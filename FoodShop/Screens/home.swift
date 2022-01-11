//
//  home.swift
//  FoodShop
//
//  Created by user on 09/01/22.
//

import SwiftUI

struct home: View {
    @EnvironmentObject var recipeVM: RecipesViewModel
    var body: some View {
        
        NavigationView {
            ScrollView{
                RecipeList(recipes: recipeVM.recipes)
            }
            .navigationTitle("My Recipes")
        }
        
        .navigationViewStyle(.stack)
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
            .environmentObject(RecipesViewModel())
    }
}
