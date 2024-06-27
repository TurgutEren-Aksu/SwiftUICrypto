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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CoinImage()
}
