//
//  FavoriteScreen.swift
//  WebtoonLibrary
//
//  Created by Vedant on 12/10/24.
//

import SwiftUI

struct FavoritesScreen: View {
    @EnvironmentObject private var library: WebtoonLibrary  // Accessing the WebtoonLibrary

    var body: some View {
        NavigationView {
            List {
                // Fetch and display only the favorites
                ForEach(library.webtoons.filter { $0.isFavorite }) { webtoon in
                    NavigationLink(destination: DetailScreen(webtoon: webtoon)) {
                        HStack {
                            Image(webtoon.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 100)
                                .cornerRadius(8)
                                .shadow(radius: 5)
                            
                            VStack(alignment: .leading) {
                                Text(webtoon.title)
                                    .font(.headline)
                                    .foregroundColor(Color.black)
                                    .lineLimit(1)  // Limit to one line
                                Text(webtoon.category)
                                    .font(.subheadline)
                                    .foregroundColor(Color.gray)
                            }
                            .padding(.leading, 10)
                        }
                    }
                    .padding(.vertical, 5)  // Add some vertical spacing between list items
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Favorites")
        }
        .accentColor(.accentColor)
    }
}

struct FavoritesScreen_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesScreen()
    }
}
