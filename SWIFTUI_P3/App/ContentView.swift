//
//  ContentView.swift
//  SWIFTUI_P3
//
//  Created by Aybatu Kerküklüoğlu on 15/12/2021.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    @State var isShowingSettings: Bool = false
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }//list
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                       isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    }).sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    })
        }//navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
