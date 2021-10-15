//
//  Exercise.swift
//  firstSiwftUIApp
//
//  Created by Nhat Nguyen on 10/12/21.
//

import Foundation

struct Exercise {
    let exerciseName: String
    let videoName: String
    
    enum ExerciseEnum: CustomStringConvertible {
        case squat
        case stepUp
        case burpee
        case sunSalute
        
        var description: String {
            switch self {
            case .squat:
                return NSLocalizedString("Squat", comment: "")
            case .stepUp:
                return NSLocalizedString("Step Up", comment: "")
            case .burpee:
                return NSLocalizedString("Burpee", comment: "")
            case .sunSalute:
                return NSLocalizedString("Sun Salute", comment: "")
            }
        }
    }
}
