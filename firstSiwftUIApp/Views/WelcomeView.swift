//
//  WelcomeView.swift
//  firstSiwftUIApp
//
//  Created by NhatNguyen on 8/23/21.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            VStack {
                HeaderView(titleText: NSLocalizedString("Welcome", comment: "Greeting"))
                Spacer()
                Button(NSLocalizedString("History", comment: "view user activity")) {
                }
                .padding(.bottom)
            }
            VStack {
                HStack(alignment: .bottom) {
                    VStack {
                        Text(NSLocalizedString("Get fit", comment: "invitation to exercise"))
                            .font(.largeTitle)
                        Text(NSLocalizedString("with high intensity interval training", comment: ""))
                         .font(.headline)
                    }
                    Image("SetUp")
                        .resizedToFill(width: 240, height: 240)
                }
                Button {
                    selectedTab = 0
                } label: {
                    Text(NSLocalizedString("Get Started", comment: ""))
                    Image(systemName: "arrow.right.circle")
                }
                .font(.title2)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 2))
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(selectedTab: .constant(9))
    }
}
