//
//  TapBar.swift
//  FoodShop
//
//  Created by user on 09/01/22.
//

import SwiftUI

struct TapBar: View {
    var body: some View {
        TabView{
            home()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            
            CategoryView()
                .tabItem{
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            
            NewRecipeView()
                .tabItem{
                    Label("New", systemImage: "plus")
                }
            
            FavoritesView()
                .tabItem{
                    Label("Favorites", systemImage: "heart")
                }
            
            SttingsView()
                .tabItem{
                    Label("Settinges", systemImage: "gear")
                }
        }
    }
}

struct TapBar_Previews: PreviewProvider {
    static var previews: some View {
        TapBar()
            .environmentObject(RecipesViewModel())
    }
}
