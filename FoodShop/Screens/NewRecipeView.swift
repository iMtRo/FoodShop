//
//  NewRecipeView.swift
//  FoodShop
//
//  Created by user on 09/01/22.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    
    var body: some View {
        
        NavigationView {
            Button("Add Recipe"){
                showAddRecipe = true
            }
            .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe){
            AddRecipetView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
