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
