//
//  RaitingView.swift
//  firstSiwftUIApp
//
//  Created by Nhat Nguyen on 9/29/21.
//

import SwiftUI

struct RaitingView: View {
    var body: some View {
        HStack {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { _ in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(.gray)
                    .font(.largeTitle)
            }
        }
    }
}

struct RaitingView_Previews: PreviewProvider {
    static var previews: some View {
        RaitingView()
            .previewLayout(.sizeThatFits)
    }
}
