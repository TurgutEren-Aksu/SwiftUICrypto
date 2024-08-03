//
//  CoinImageView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 30.07.2024.
//

import SwiftUI




struct CoinImageView: View {
    
    @StateObject var vm: CoinImageViewModel = CoinImageViewModel()
    
    var body: some View {
        ZStack{
            if let image = vm.image{
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            }else if vm.isLoading{
                ProgressView()
            }else{
                Image(systemName: "questionmark")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}

#Preview {
    CoinImageView()
        .padding()
        .previewLayout(.sizeThatFits)
}
