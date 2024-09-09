//
//  HomeViewModel.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 26.05.2024.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject{
    
    @Published var statistics : [StatisticModel] = [
        StatisticModel(title: "Title", value: "Value", percentageChange: 1),
        StatisticModel(title: "Title", value: "Value"),
        StatisticModel(title: "Title", value: "Value"),
        StatisticModel(title: "Title", value: "Value", percentageChange: -7),
        ]
    
    
	@Published var allCoins: [CoinModel] = []
	@Published var portfolioCoins: [CoinModel] = []
    @Published var searchText: String = ""
    private let coinDataService = CoinDataService()
    private let marketDataService = MarketDataService()
    private var cancellables = Set<AnyCancellable>()
    
	init() {
		addSubscribers()
		}
    func addSubscribers(){
        
        $searchText
            .combineLatest(coinDataService.$allCoins)
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .map(filterCoins)
            .sink{ [weak self] ( returnedCoins ) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
        marketDataService.$marketData
            .map{(marketDataModel) -> [StatisticModel] in
                var stats: [StatisticModel] = []
                guard let data = marketDataModel else {
                    return stats
                }
                let marketCap = StatisticModel(title: "MarketCap", value: data.marketCap, percentageChange: data.marketCapChangePercentage24HUsd)
                stats.append(marketCap)
                let volume = StatisticModel(title: "24H Volume", value: data.volume)
                let btcDominance = StatisticModel(title: "BTC Dominance", value: data.btcDominance)
                let portfolio = StatisticModel(title: "Portfolia Value", value: "$0.00", percentageChange: 0)
                stats.append(volume)
                stats.append(contentsOf: [
                marketCap,
                volume,
                btcDominance,
                portfolio
                ])
                return stats
            }
    }
    private func filterCoins(text: String, coins: [CoinModel]) -> [CoinModel]{
        guard !text.isEmpty else {
        return coins
        }
        let lowercasedText = text.lowercased()
        
        return coins.filter { (coin) -> Bool in
            return coin.name.lowercased().contains(lowercasedText) ||
            coin.symbol.lowercased().contains(lowercasedText) ||
            coin.id.lowercased().contains(lowercasedText)
        }
    }
}
   


