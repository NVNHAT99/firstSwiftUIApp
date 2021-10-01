//
//  HistoryView.swift
//  firstSiwftUIApp
//
//  Created by Nhat Nguyen on 10/1/21.
//

import SwiftUI

struct HistoryView: View {
    let today = Date()
    let yesterdate = Date().addingTimeInterval(-86400)
    let exercises1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let exercises2 = ["Squat", "Step Up", "Burpee"]
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        return formatter
    }()
    var body: some View {
        VStack {
            Text("History")
                .font(.title)
            Form {
                Section {
                    
                } header: {
                    Text("")
                }

            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
