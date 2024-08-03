//
//  CoinImageViewModel.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 3.08.2024.
//

import Foundation
import SwiftUI

class CoinImageViewModel: ObservableObject{
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    init(){
        getImage()
    }
    
   private func getImage(){
        
    }
}
