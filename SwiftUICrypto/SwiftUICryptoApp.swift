//
//  SwiftUICryptoApp.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 15.04.2024.
//

import SwiftUI

@main
struct SwiftUICryptoApp: App {
	
@StateObject private var vm  = HomeViewModel()
	
    var body: some Scene {
        WindowGroup {
			NavigationView {
				HomeView()
					.navigationBarHidden(true)
			}
			.environmentObject(vm)
        }
    }
}
