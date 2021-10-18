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
    @State private var rating = 0
    @State private var showHistory = false
    @State private var showSuccessView = false
    let index: Int
    let interval: TimeInterval = 30
    var lastExercise: Bool {
     index + 1 == Exercise.exercises.count
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText:
                            Exercise.exercises[index].exerciseName)
                    .padding(.bottom, 10)
                if let url = Bundle.main.url(forResource: Exercise.exercises[index].videoName, withExtension: ".mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geometry.size.height * 0.35)
                }
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: 60))
                HStack(spacing: 150) {
                    Button("Start Exercise") {
                        
                    }
                    
                    Button("Done") {
                        if lastExercise {
                            showSuccessView.toggle()
                        } else {
                            selectedTab += 1
                        }
                    }
                    .sheet(isPresented: $showSuccessView) {
                        
                    } content: {
                        SuccessView(selectedTab: $selectedTab)
                    }

                }
                .font(.title3)
                .padding()
                RatingView(rating: $rating)
                    .padding()
                Spacer()
                Button("History") {
                 showHistory.toggle()
                }
                .sheet(isPresented: $showHistory) {
                 HistoryView(showHistory: $showHistory)
                }
                .font(.title3)
                .padding()

            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(selectedTab: .constant(3), index: 3)
    }
}

struct HeaderView: View {
    @Binding var selectedTab: Int
    let titleText: String
    
    var body: some View {
        VStack {
            Text(titleText)
                .font(.largeTitle)
            HStack {
                ForEach(0 ..< Exercise.exercises.count) { index in
                    let fill = index == selectedTab ? ".fill" : ""
                    Image(systemName: "\(index + 1).circle\(fill)")
                        .onTapGesture {
                            selectedTab = index
                        }
                }
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
            HeaderView(selectedTab: .constant(0), titleText: "don't let go")
                .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
            HeaderView(selectedTab: .constant(1), titleText: "don't let go")
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .accessibilityLarge)
                .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
        }
    }
}
