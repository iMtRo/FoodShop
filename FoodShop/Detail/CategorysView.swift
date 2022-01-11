//
//  CategoryView.swift
//  FoodShop
//
//  Created by user on 10/01/22.
//

import SwiftUI

struct CategorysView: View {
    @EnvironmentObject var recipeVM: RecipesViewModel
    var category: Category
    
    var recipes: [Recipe] {
        return recipeVM.recipes.filter{ $0.category == category.rawValue}
    }
    
    var body: some View {
    
        ScrollView{
            RecipeList(recipes: recipes )
        }
        .navigationTitle(category.rawValue + "lar")
    
    }
}

struct CategorysView_Previews: PreviewProvider {
    static var previews: some View {
        CategorysView(category: Category.dimlama)
            .environmentObject(RecipesViewModel())
    }
}
