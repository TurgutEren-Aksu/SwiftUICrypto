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
					Spacer()
					Text("Live Prices")
						.font(.headline)
						.fontWeight(.heavy)
						.foregroundStyle(Color.theme.accent)
					Spacer()
					CircleButtonView(iconName: "chevron.right")
				}
				.padding(.horizontal)
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
