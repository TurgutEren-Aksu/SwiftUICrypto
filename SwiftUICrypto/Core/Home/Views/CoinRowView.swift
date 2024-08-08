//
//  CoinRowView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 13.05.2024.
//

import SwiftUI


struct CoinRowView: View {
	
	let coin: CoinModel
	let showHoldingsColumns: Bool
	var body: some View {
		HStack(spacing: 0){
			leftColumn
			Spacer()
			if showHoldingsColumns{
				centerColumns
			}
			rightColumns
		}
		.font(.subheadline)
	}
}
#Preview {
	Group{
		CoinRowView(coin: DeveloperProvider.instance.coin, showHoldingsColumns: true)
			.previewLayout(.sizeThatFits)
		CoinRowView(coin: DeveloperProvider.instance.coin, showHoldingsColumns: true)
			.previewLayout(.sizeThatFits)
			.preferredColorScheme(.dark)
	}
	
}
extension CoinRowView{
	private var leftColumn: some View{
		HStack(spacing:0){
			Text("\(coin.rank)")
				.font(.caption)
				.foregroundStyle(Color.theme.secondaryText)
				.frame(minWidth: 30)
			CoinImageView(coin: coin)
				.frame(width: 30, height: 30)
			Text(coin.symbol.uppercased())
				.font(.headline)
				.padding(.leading, 6)
				.foregroundStyle(Color.theme.accent)
		}
	}
	private var centerColumns: some View{
		VStack(alignment:.trailing){
			Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())
				.bold()
			Text((coin.currentHoldings ?? 0).asNumberString())
			
		}
		.foregroundStyle(Color.theme.accent)
	}
	private var rightColumns: some View{
		VStack(alignment:.trailing){
			Text("\(coin.currentPrice.asCurrencyWith2Decimals())")
				.bold()
				.foregroundStyle(Color.theme.accent)
			Text(coin.priceChangePercentage24H?.asPercentString() ?? " ")
				.foregroundStyle(
					(coin.priceChangePercentage24H ?? 0) >= 0 ? Color.theme.green : Color.theme.red
				)
		}
		.frame(width: UIScreen.main.bounds.width / 3.5,alignment: .trailing)
		
	}
}



