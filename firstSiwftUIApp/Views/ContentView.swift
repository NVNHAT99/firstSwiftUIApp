//
//  ContentView.swift
//  firstSiwftUIApp
//
//  Created by NhatNguyen on 8/21/21.
//

import SwiftUI

struct ContentView: View {
    @State private var history = HistoryStore()
    @State private var selectedTab = 9
    var body: some View {
        TabView(selection: $selectedTab) {
            WelcomeView(selectedTab: $selectedTab, history: $history)
                .tag(9)
            ForEach(0 ..< Exercise.exercises.count) { index in
                ExerciseView(history: $history, selectedTab: $selectedTab, index: index)
                 .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
