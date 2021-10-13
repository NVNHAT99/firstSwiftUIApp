//
//  HistoryStoreDevData.swift
//  firstSiwftUIApp
//
//  Created by Nhat Nguyen on 10/13/21.
//

import Foundation

extension HistoryStore {
    mutating func createDevData() {
        // development Data
        exerciseDays = [
            ExerciseDay(
                date: Date().addingTimeInterval(-86400),
                exercises: [
                    Exercise.exercises[0].exerciseName,
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[2].exerciseName
                ]),
            ExerciseDay(
                date: Date().addingTimeInterval(-86400 * 2),
                exercises: [
                    Exercise.exercises[0].exerciseName,
                    Exercise.exercises[1].exerciseName
                ])
        ]
    }
}
