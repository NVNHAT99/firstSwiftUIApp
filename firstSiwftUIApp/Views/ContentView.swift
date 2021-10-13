//
//  ContentView.swift
//  firstSiwftUIApp
//
//  Created by NhatNguyen on 8/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ForEach(0 ..< Exercise.exercises.count) { index in
                ExerciseView(index: index)
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
