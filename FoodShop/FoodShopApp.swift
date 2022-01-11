//
//  FoodShopApp.swift
//  FoodShop
//
//  Created by user on 09/01/22.
//

import SwiftUI

@main
struct FoodShopApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            firstpage()
                .environmentObject(recipesViewModel)
        }
    }
}
