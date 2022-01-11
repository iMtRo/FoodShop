//
//  CategoryView.swift
//  FoodShop
//
//  Created by user on 09/01/22.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases){ category in
                    NavigationLink{
                        CategorysView(category: category)
                    } label: {
                        Text(category.rawValue + "lar")
                    }
                }
            }
            .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
