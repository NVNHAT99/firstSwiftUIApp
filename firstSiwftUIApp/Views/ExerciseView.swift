//
//  ExerciseView.swift
//  firstSiwftUIApp
//
//  Created by NhatNguyen on 8/23/21.
//

import SwiftUI
import AVKit
struct ExerciseView: View {
    let videoNames = ["video1", "video2", "video3"]
    let songNames = ["please don't go", "comethru", "dancing with your ghost"]
    let index: Int
    let interval: TimeInterval = 30
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(songName: songNames[index])
                    .padding(.bottom)
                if let url = Bundle.main.url(forResource: videoNames[index], withExtension: ".mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geometry.size.height * 0.45)
                }
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: 90))
                Button("Start/Done") {}
                    .font(.title3)
                    .padding()
                RaitingView()
                    .padding()
                Spacer()
                Button("Button History") {}
                    .font(.title3)
                    .padding()

            }
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
