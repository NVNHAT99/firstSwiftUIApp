//
//  firstViewSwiftUIView.swift
//  firstSiwftUIApp
//
//  Created by NhatNguyen on 8/21/21.
//

import SwiftUI

struct FirstViewSwiftUIView: View {
    var body: some View {
        TabView {
            Text("Hi there")
            Text("Hi nhat")
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct FirstViewSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FirstViewSwiftUIView()
    }
}
