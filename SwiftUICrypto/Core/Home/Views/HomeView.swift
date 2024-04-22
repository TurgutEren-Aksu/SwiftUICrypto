//
//  HomeView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 18.04.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
		ZStack{
			Color.theme.background.ignoresSafeArea()
			VStack{
				HStack{
					CircleButtonView(iconName: "info")
					CircleButtonView(iconName: "chevron.right")
				}
				Text("Header")
				Spacer(minLength: 0)
			}
		}
    }
}

#Preview {
	NavigationView {
		HomeView()
			.navigationBarHidden(true)
	}
}
