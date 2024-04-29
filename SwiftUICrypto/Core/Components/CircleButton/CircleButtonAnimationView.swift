//
//  CircleButtonAnimationView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 29.04.2024.
//

import SwiftUI

struct CircleButtonAnimationView: View {
	
	@State private var animate: Bool = false
	
    var body: some View {
		Circle()
			.stroke(lineWidth: 5.0)
			.scale(animate ? 1.0 : 0.0)
			.animation(animate ? Animation.easeOut(duration: 1.0) : .none)
			.onAppear{
				animate.toggle()
			}
		
    }
}

#Preview {
    CircleButtonAnimationView()
}
