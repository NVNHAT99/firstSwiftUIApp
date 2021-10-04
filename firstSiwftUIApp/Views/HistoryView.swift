//
//  HistoryView.swift
//  firstSiwftUIApp
//
//  Created by Nhat Nguyen on 10/1/21.
//

import SwiftUI

struct HistoryView: View {
    let today = Date()
    let yesterday = Date().addingTimeInterval(-86400)
    let exercises1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let exercises2 = ["Squat", "Step Up", "Burpee"]
//    let dateFormatter: DateFormatter = {
//        let formatter = DateFormatter()
//        formatter.timeStyle = .none
//        formatter.dateStyle = .long
//        return formatter
//    }()
    var body: some View {
        VStack {
            Text("History")
                .font(.title)
            Form {
                Section {
                    ForEach(exercises1, id: \.self) { exercise in
                        Text(exercise)
                    }
                } header: {
                    Text(today.forrmatted(as: "MMM d"))
                }
                Section {
                    ForEach(exercises2, id: \.self) { exercise in
                        Text(exercise)
                    }
                } header: {
                    Text(yesterday.forrmatted(as: "MMM d"))
                }

            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
            .previewLayout(.sizeThatFits)
    }
}
