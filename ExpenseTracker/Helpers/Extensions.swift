//
//  Extensions.swift
//  ExpenseTracker
//
//  Created by Merxhan Bajrami on 19/14/21.

import Foundation

extension Double {
    
    var formattedCurrencyText: String {
        return Utils.numberFormatter.string(from: NSNumber(value: self)) ?? "0"
    }
    
}
