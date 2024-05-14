//
//  CoinRowView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 13.05.2024.
//

import SwiftUI


struct CoinRowView: View {
	
	let coin: CoinModel
	
    var body: some View {
		HStack(spacing: 0){
			Text("\(coin.rank)")
				.font(.caption)
				.foregroundStyle(Color.theme.secondaryText)
				.frame(minWidth: 30)
		}
    }
}
#Preview {
	CoinRowView(coin: DeveloperProvider.instance.coin)
}



