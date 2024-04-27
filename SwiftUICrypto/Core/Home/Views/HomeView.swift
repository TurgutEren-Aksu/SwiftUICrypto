//
//  HomeView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 18.04.2024.
//

import SwiftUI

struct HomeView: View {
	
	@State private var showPortfolio: Bool = false
	
    var body: some View {
		ZStack{
			Color.theme.background.ignoresSafeArea()
			VStack{
				HStack{
					CircleButtonView(iconName: showPortfolio ? "plus" : "info")
						.animation(.none)
					Spacer()
					Text(showPortfolio ? "Portfolio" : "Live Prices")
						.font(.headline)
						.fontWeight(.heavy)
						.foregroundStyle(Color.theme.accent)
					Spacer()
					CircleButtonView(iconName: "chevron.right")
						.rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
						.onTapGesture {
							withAnimation(.spring()) {
								showPortfolio.toggle()
							}
						}
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
