//
//  ContentView.swift
//  WebtoonLibrary
//
//  Created by Vedant on 12/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            FavoritesScreen()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
        }
        .accentColor(.accentColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(WebtoonLibrary())
    }
}
