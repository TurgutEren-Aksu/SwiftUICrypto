//
//  CoinModel.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 6.05.2024.
//

import Foundation

struct CoinModel {
		let id, symbol, name: String
		let image: String
		let currentPrice, marketCap, marketCapRank, fullyDilutedValuation: Int
		let totalVolume, high24H, low24H: Int
		let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double
		let circulatingSupply, totalSupply, maxSupply, ath: Int
		let athChangePercentage: Double
		let athDate: String
		let atl, atlChangePercentage: Double
		let atlDate: String
		let roi: NSNull
		let lastUpdated: String
		let sparklineIn7D: SparklineIn7D
		let priceChangePercentage24HInCurrency: Double
}
struct SparklineIn7D {
	let price: [Double]
}
