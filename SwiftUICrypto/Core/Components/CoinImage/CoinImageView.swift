//
//  CoinImageView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 30.07.2024.
//

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

struct CoinImageView: View {
    
    @StateObject var vm: CoinImageViewModel = CoinImageViewModel()
    
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    CoinImageView()
}
