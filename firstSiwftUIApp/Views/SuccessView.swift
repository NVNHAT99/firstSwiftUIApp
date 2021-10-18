//
//  SuccessView.swift
//  firstSiwftUIApp
//
//  Created by Nhat Nguyen on 10/11/21.
//

import SwiftUI

struct SuccessView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedTab: Int
    let highFiveText = """
                        Good job completing \
                        all your four exercises!
                        Remember tormorrow's \
                        another day.
                        So eat well and get some rest.
                        """
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Button {
                    selectedTab = 9
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Continue")
                }
            }
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height: 75)
                    .foregroundColor(.purple)
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(highFiveText)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(selectedTab: .constant(3))
    }
}
