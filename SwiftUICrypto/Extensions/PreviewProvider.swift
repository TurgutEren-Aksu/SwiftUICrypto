//
//  PreviewProvider.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 13.05.2024.
//

import Foundation
import SwiftUI

extension PreviewProvider {
	static var dev: DeveloperProvider{
		return DeveloperProvider.instance
	}
}

class DeveloperProvider {
	static let instance = DeveloperProvider()
	private init() { }
}
