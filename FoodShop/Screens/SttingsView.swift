//
//  SttingsView.swift
//  FoodShop
//
//  Created by user on 09/01/22.
//

import SwiftUI

struct SttingsView: View {
    var body: some View {
        NavigationView {
            Text("v13.05.2003")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

struct SttingsView_Previews: PreviewProvider {
    static var previews: some View {
        SttingsView()
    }
}
