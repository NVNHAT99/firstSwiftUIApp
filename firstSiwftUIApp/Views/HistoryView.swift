//
//  HistoryView.swift
//  firstSiwftUIApp
//
//  Created by Nhat Nguyen on 10/1/21.
//

import SwiftUI

struct HistoryView: View {
    @Binding var showHistory: Bool
    @EnvironmentObject var history: HistoryStore
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button {
                showHistory.toggle()
            } label: {
                Image(systemName: "xmark.circle")
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding(.trailing)
            VStack {
                Text(NSLocalizedString("History", comment: ""))
                    .font(.title)
                Form {
                    ForEach(history.exerciseDays) { day in
                        Section {
                            ForEach(day.exercises, id: \.self) { exercise in
                                Text(exercise)
                            }
                        } header: {
                            Text(day.date.forrmatted(as: "MMM d"))
                        }
                    }
                }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(showHistory: .constant(true))
            .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
            .environmentObject(HistoryStore())
    }
}
