//
//  DateExtentions.swift
//  firstSiwftUIApp
//
//  Created by Nhat Nguyen on 10/4/21.
//

import Foundation

extension Date {
    func forrmatted(as format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
