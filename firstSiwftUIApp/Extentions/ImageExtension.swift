//
//  ImageExtension.swift
//  firstSiwftUIApp
//
//  Created by Nhat Nguyen on 10/10/21.
//

import Foundation
import SwiftUI

extension Image {
    func resizedToFill(width: CGFloat, height: CGFloat) -> some View {
        return self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
    }
}
