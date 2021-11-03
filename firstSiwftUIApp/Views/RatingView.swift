//
//  RaitingView.swift
//  firstSiwftUIApp
//
//  Created by Nhat Nguyen on 9/29/21.
//

import SwiftUI

struct RatingView: View {
    
    let exerciseIndex: Int
    @AppStorage("Rating") private var ratings = "4000"
    @State private var rating = 0
    
    let onColer = Color.red
    let offColer = Color.gray
    
    var body: some View {
        HStack {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(index >= rating ? offColer : onColer)
                    .font(.largeTitle)
                    .onTapGesture {
                        updateRating(index: index + 1)
                    }
                    .onAppear {
                        let index = ratings.index(ratings.startIndex, offsetBy: exerciseIndex)
                        let character = ratings[index]
                        rating = character.wholeNumberValue ?? 0
                        
                    }
            }
        }
    }
    
    func updateRating(index: Int) {
        rating = index
        let index = ratings.index(ratings.startIndex, offsetBy: exerciseIndex)
        ratings.replaceSubrange(index...index, with: String(rating))
    }
}

struct RaitingView_Previews: PreviewProvider {
    @AppStorage("ratings") static var ratings: String?
    static var previews: some View {
        ratings = nil
        return RatingView(exerciseIndex: 0)
            .previewLayout(.sizeThatFits)
    }
}
