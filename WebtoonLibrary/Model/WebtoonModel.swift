//
//  WebtoonModel.swift
//  WebtoonLibrary
//
//  Created by Vedant on 12/10/24.
//

import SwiftUI

struct Webtoon: Identifiable {
    let id = UUID()
    let title: String
    let category: String
    let image: String
    let description: String
    var isFavorite: Bool = false
    var rating: Double = 0.0
}

class WebtoonLibrary: ObservableObject {
    @Published var webtoons: [Webtoon] = [
        Webtoon(title: "Lore Olympus", category: "Romance", image: "thumbnail", description: "Witness the epic love story of Persephone and Hades in this modern retelling of a classic Greek myth.", isFavorite: true),
        Webtoon(title: "Tower of God", category: "Action", image: "thumbnail", description: "Follow Bam as he climbs the mysterious Tower, facing challenges and making allies along the way."),
        Webtoon(title: "True Beauty", category: "Romance", image: "thumbnail", description: "A romantic comedy about a girl who becomes a social media celebrity after learning about makeup."),
        Webtoon(title: "The God of High School", category: "Action", image: "thumbnail", description: "High schoolers with extraordinary abilities compete in a martial arts tournament with the world at stake."),
        Webtoon(title: "The Remarried Empress", category: "Drama", image: "thumbnail", description: "A gripping tale of love, betrayal, and political intrigue set in a royal court."),
        Webtoon(title: "Age Matters", category: "Romance", image: "thumbnail", description: "A story about an older woman and a younger man who find themselves in a whirlwind romance."),
        Webtoon(title: "Solo Leveling", category: "Fantasy", image: "thumbnail", description: "A weak hunter gains a mysterious power and embarks on an adventure to become the strongest.", isFavorite: true)
    ]
}
