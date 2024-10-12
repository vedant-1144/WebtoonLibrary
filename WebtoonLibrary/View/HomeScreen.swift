//
//  HomeScreen.swift
//  WebtoonLibrary
//
//  Created by Vedant on 12/10/24.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject private var library = WebtoonLibrary()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Array(Set(library.webtoons.map { $0.category })), id: \.self) { category in
                    Section(header: Text(category).font(.headline)) {
                        ForEach(library.webtoons.filter { $0.category == category }) { webtoon in
                            NavigationLink(destination: DetailScreen(webtoon: webtoon)) {
                                HStack {
                                    Image(webtoon.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(8)
                                    
                                    VStack(alignment: .leading) {
                                        Text(webtoon.title)
                                            .font(.system(size: 16, weight: .medium))
                                        Text(webtoon.category)
                                            .font(.system(size: 12, weight: .light))
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Webtoon Library")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
