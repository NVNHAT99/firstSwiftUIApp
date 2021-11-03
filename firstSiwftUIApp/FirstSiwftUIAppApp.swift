//
//  firstSiwftUIAppApp.swift
//  firstSiwftUIApp
//
//  Created by NhatNguyen on 8/21/21.
//

import SwiftUI

@main
struct FirstSiwftUIAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    print(FileManager.default.urls(
                        for: .documentDirectory,
                        in: .userDomainMask))
                }
        }
    }
}
