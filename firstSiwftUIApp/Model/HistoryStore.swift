//
//  HistoryStore.swift
//  firstSiwftUIApp
//
//  Created by Nhat Nguyen on 10/13/21.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []
    
    init() {
        #if DEBUG
        createDevData()
        #endif
    }
    
    mutating func addDoneExercise(_ exerciseName: String) {
        let today = Date()
        if today.isSameDate(as: exerciseDays[0].date) {
            exerciseDays[0].exercises.append(exerciseName)
        } else {
            exerciseDays.insert( // 2
                ExerciseDay(date: today, exercises: [exerciseName]),
                at: 0)
        }
    }
}
