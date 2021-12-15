//
//  FruitDetailView.swift
//  SWIFTUI_P3
//
//  Created by Aybatu Kerküklüoğlu on 15/12/2021.
//

import SwiftUI

struct FruitDetailView: View {
    var fruits: Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    VStack {
                        Text(fruits.title)
                    }//vstack
                }//vstack
            }//scrollview
        }//navigationview
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruits: fruitsData[0])
    }
}
