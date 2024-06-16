//
//  NetworkingManager.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 15.06.2024.
//

import Foundation


class NetworkingManager {
	static func download(url: URL) {
		guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&per_page=250&page=1&sparkline=true&price_change_percentage=24h#") else{return}
		URLSession.shared.dataTaskPublisher(for: url)
			.subscribe(on: DispatchQueue.global(qos: .default))
			.tryMap { (output) -> Data in
				guard let response = output.response as? HTTPURLResponse,response.statusCode >= 200 && response.statusCode < 300 else {
					throw URLError(.badServerResponse)
				}
				return output.data
			}
			.receive(on: DispatchQueue.main)
	}
}
