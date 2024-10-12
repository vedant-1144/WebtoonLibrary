//
//  WebtoonLibraryApp.swift
//  WebtoonLibrary
//
//  Created by Vedant on 12/10/24.
//

import SwiftUI

@main
struct WebtoonLibraryApp: App {
    @StateObject private var library = WebtoonLibrary()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(library)
        }
    }
}
