//
//  CircleButtonView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 19.04.2024.
//

import SwiftUI
import DeveloperToolsSupport

struct CircleButtonView: View {
	let iconName: String
    var body: some View {
		Image(systemName: iconName)
			.font(.headline)
			.foregroundColor(Color.theme.accent)
			.frame(width: 50, height: 50)
			.background(
			Circle()
				.foregroundColor(Color.theme.background)
			)
			.shadow(
				color: Color.theme.accent.opacity(0.25),
				radius: 10,x: 0,y: 0)
			.padding()
    }
}
#Preview {

	Group{
		CircleButtonView(iconName: "info")
			.previewLayout(.sizeThatFits)
		CircleButtonView(iconName: "plus")
			.previewLayout(.sizeThatFits)
			.preferredColorScheme(.dark)
	}
}
