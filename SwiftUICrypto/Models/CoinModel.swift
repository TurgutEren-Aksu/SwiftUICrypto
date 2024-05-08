//
//  CoinModel.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 6.05.2024.
//

import Foundation

struct CoinModel: Identifiable,Codable {
		let id, symbol, name: String
		let image: String
		let currentPrice: Double
		let marketCap, marketCapRank, fullyDilutedValuation: Double?
		let totalVolume, high24H, low24H: Double?
		let priceChange24H, priceChangePercentage24H:Double?
		let marketCapChange24H:Double?
		let marketCapChangePercentage24H: Double?
		let circulatingSupply, totalSupply, maxSupply, ath: Double?
		let athChangePercentage: Double?
		let athDate: String?
		let atl, atlChangePercentage: Double?
		let atlDate: String?
		let lastUpdated: String?
		let sparklineIn7D: SparklineIn7D?
		let priceChangePercentage24HInCurrency: Double?
		let currentHoldings: Double?
}
struct SparklineIn7D:Codable {
	let price: [Double]?
}
