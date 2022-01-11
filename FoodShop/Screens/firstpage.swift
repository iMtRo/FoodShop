//
//  firstpage.swift
//  FoodShop
//
//  Created by user on 09/01/22.
//

import SwiftUI

struct firstpage: View {
    var body: some View {
        TapBar()
    }
}

struct firstpage_Previews: PreviewProvider {
    static var previews: some View {
        firstpage()
            .environmentObject(RecipesViewModel())
    }
}
