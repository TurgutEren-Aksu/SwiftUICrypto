//
//  CoinImageService.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 30.06.2024.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService{
	var imageSubscription: AnyCancellable?
	
	@Published var image: UIImage? = nil
	init(urlString: String) {
		getCoinImage(urlString: <#T##String#>)
	}
	func 	(urlString: String) {
		guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&per_page=250&page=1&sparkline=true&price_change_percentage=24h#") else{return}
		imageSubscription = NetworkingManager.download(url: url)
			.tryMap({ (data) -> UIImage? in
				return UIImage(data: data)
			})
			.sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self ] (returnedImage) in
				self?.image = returnedImage
				self?.imageSubscription?.cancel()
			})
	}
}
