//
//  NetworkingManager.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 15.06.2024.
//

import Foundation
import Combine


class NetworkingManager {
	static func download(url: URL) -> Publishers.ReceiveOn<Publishers.TryMap<Publishers.SubscribeOn<URLSession.DataTaskPublisher, DispatchQueue>, Data>, DispatchQueue>{
		
	return URLSession.shared.dataTaskPublisher(for: url)
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
