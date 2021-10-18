//
//  RaitingView.swift
//  firstSiwftUIApp
//
//  Created by Nhat Nguyen on 9/29/21.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int
    
    let onColer = Color.red
    let offColer = Color.gray
    
    var body: some View {
        HStack {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(index > rating ? offColer : onColer)
                    .font(.largeTitle)
                    .onTapGesture {
                        rating = index
                    }
            }
        }
    }
}

struct RaitingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(4))
            .previewLayout(.sizeThatFits)
    }
}
