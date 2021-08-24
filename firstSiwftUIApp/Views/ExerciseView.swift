//
//  ExerciseView.swift
//  firstSiwftUIApp
//
//  Created by NhatNguyen on 8/23/21.
//

import SwiftUI

struct ExerciseView: View {
    let videoNames = ["video1", "video2", "video3"]
    let songNames = ["please don't go", "comethru", "dancing with your ghost"]
    let index: Int
    var body: some View {
        VStack {
            HeaderView(songName: songNames[index])
            Text("video player")
            Text("Timer")
            Text("start/Done button")
            Text("Rating")
            Text("History button")
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}

struct HeaderView: View {
    let songName: String
    var body: some View {
        VStack {
            Text(songName)
                .font(.largeTitle)
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            .font(.title2)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(songName: "don't let go")
                .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
            HeaderView(songName: "don't let go")
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .accessibilityLarge)
                .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
        }
    }
}
