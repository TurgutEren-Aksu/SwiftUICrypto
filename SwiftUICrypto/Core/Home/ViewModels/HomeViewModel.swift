//
//  HomeViewModel.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 26.05.2024.
//

import Foundation

class HomeViewModel: ObservableObject{
	@Published var allCoins: [CoinModel] = []
	@Published var portfolioCoins: [CoinModel] = []
	init() {
		DispatchQueue.main.asyncAfter(deadline: .now()+2.0){
			self.allCoins.append(DeveloperProvider.instance.coin)
			self.portfolioCoins.append(DeveloperProvider.instance.coin)
		}
	}

}
