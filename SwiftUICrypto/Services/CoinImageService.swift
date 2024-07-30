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
    
    var imageSubscription: AnyCancellable?
    
    init(){
//        getCoinImage()
    }
    
    func getCoinImage(urlString: String){
        guard let url = URL(string: urlString ) else{return}
        imageSubscription = NetworkingManager.download(url: url)
        //trymap
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnCoins) in
                self?.allCoins = returnCoins
                self?.coinSubscription?.cancel()
            })

    }
    
}
