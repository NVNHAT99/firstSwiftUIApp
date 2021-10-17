//
//  ExerciseView.swift
//  firstSiwftUIApp
//
//  Created by NhatNguyen on 8/23/21.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    @Binding var selectedTab: Int
    let index: Int
    let interval: TimeInterval = 30
    var lastExercise: Bool {
     index + 1 == Exercise.exercises.count
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(titleText:
                            Exercise.exercises[index].exerciseName)
                    .padding(.bottom, 10)
                if let url = Bundle.main.url(forResource: Exercise.exercises[index].videoName, withExtension: ".mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geometry.size.height * 0.35)
                }
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: 60))
                HStack(spacing: 150) {
                    Button("Start Exercise"){
                        
                    }
                    
                    Button("Done"){
                        selectedTab = lastExercise ? 9 : selectedTab + 1
                    }
                }
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
        ExerciseView(selectedTab: .constant(1),index: 1)
    }
}

struct HeaderView: View {
    let titleText: String
    var body: some View {
        VStack {
            Text(titleText)
                .font(.largeTitle)
            HStack {
                Image(systemName: "hand.wave")
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            .font(.title2)
        }
    }
}

extension Exercise {
    static let exercises = [
        Exercise(exerciseName: String(describing: ExerciseEnum.squat), videoName: "squat"),
        Exercise(exerciseName: String(describing: ExerciseEnum.stepUp), videoName: "step-up"),
        Exercise(exerciseName: String(describing: ExerciseEnum.burpee), videoName: "burpee"),
        Exercise(exerciseName: String(describing: ExerciseEnum.sunSalute), videoName: "sun-salute")
    ]
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(titleText: "don't let go")
                .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
            HeaderView(titleText: "don't let go")
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .accessibilityLarge)
                .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
        }
    }
}
