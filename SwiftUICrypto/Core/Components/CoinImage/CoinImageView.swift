//
//  CoinImageView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 29.06.2024.
//

import SwiftUI

class CoinImageViewModel: ObservableObject {
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
		ZStack{
			if let image = vm.image{
				Image(uiImage: image)
					.resizable()
					.scaledToFit()
			} else if vm.isLoading{
				ProgressView()
			}else{
				Image(systemName: "questionmark")
					.foregroundStyle(Color.theme.secondaryText)
				
			}
		}
	}
}

#Preview {
	CoinImageView()
		.padding()
		.previewLayout(.sizeThatFits)
}
