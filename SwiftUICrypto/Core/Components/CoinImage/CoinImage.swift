//
//  CoinImage.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 26.06.2024.
//

import SwiftUI

class CoinImageViewModel: ObservableObject {
	@Published var image: UIImage? = nil
	@Published var isLoading: Bool = false
	
	init(){
		
	}
	private func getImage(){
		
	}
	
}


struct CoinImage: View {
	
	@StateObject var vm: CoinImageViewModel = CoinImageViewModel()
	
    var body: some View {
		ZStack{
			if let image = vm.image{
				Image(uiImage: image)
					.resizable()
					.scaledToFit()
			} else if vm.isLoading{
				ProgressView()
			}else{
				Image(systemName: "quesitonmark")
					.foregroundStyle(Color.theme.secondaryText)
				
			}
		}
    }
}

#Preview {
    CoinImage()
}
