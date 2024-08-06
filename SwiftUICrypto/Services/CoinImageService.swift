//
//  CoinImageService.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 30.07.2024.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService{
    
    @Published var image: UIImage? = nil
    
    private var imageSubscription: AnyCancellable?
    
    private let coin: CoinModel
    
    init(coin: CoinModel){
        self.coin = coin
        getCoinImage()
    }
    
    func getCoinImage(){
        guard let url = URL(string: coin.image ) else{return}
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage?  in
                return UIImage(data: data)
            })
//            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedCoins) in
                self?.image = returnedCoins
                self?.imageSubscription?.cancel()
            })

    }
    
}
