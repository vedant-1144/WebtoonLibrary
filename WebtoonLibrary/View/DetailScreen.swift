//
//  DetailScreen.swift
//  WebtoonLibrary
//
//  Created by Vedant on 12/10/24.
//

import SwiftUI

struct DetailScreen: View {
    @State var webtoon: Webtoon
    @State private var userRating: Int = 0
    let averageRating: Double = 4.5
    
    var body: some View {
        ScrollView {
            Image(webtoon.image)
                .resizable()
                .scaledToFit()
                .frame(height: 280)
                .cornerRadius(12)
                .shadow(radius: 5)
            
            HStack {
                Text(webtoon.title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                // Average Rating Box
                Text("Avg: \(String(format: "%.1f", averageRating)) ★")
                    .padding(8)
                    .background(Color.black.opacity(0.7))
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .bold))
                    .cornerRadius(8)
                    .padding([.top, .trailing], 10)
            }
            
            Text(webtoon.category)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.red)
            
            Text(webtoon.description)
                .font(.body)
                .padding(.vertical)
            
            // User Rating Section
            HStack {
                Text("Rate this Webtoon : ")
                    .font(.system(size: 18, weight: .bold))
                ForEach(1...5, id: \.self) { star in
                    Image(systemName: star <= userRating ? "star.fill" : "star")
                        .foregroundColor(.yellow)
                        .onTapGesture {
                            userRating = star
                        }
                }
            }
            .padding(.bottom,10)
            
            // Add to Favorites Button
            Button(action: {
                webtoon.isFavorite.toggle()
            }) {
                Text(webtoon.isFavorite ? "Remove From Favorites" : "Add To Favorites")
                    .padding()
                    .background(webtoon.isFavorite ? Color.red : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
        .navigationBarTitle(webtoon.title, displayMode: .inline)
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailScreen(webtoon: WebtoonLibrary().webtoons[0])
        }
    }
}
