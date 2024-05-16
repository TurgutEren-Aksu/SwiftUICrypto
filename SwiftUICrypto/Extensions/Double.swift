//
//  Double.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 16.05.2024.
//

import Foundation

extension Double {
	private var currencyFormatter: NumberFormatter {
		let formatter = NumberFormatter()
		formatter.usesGroupingSeparator = true
		return formatter
	}
}
