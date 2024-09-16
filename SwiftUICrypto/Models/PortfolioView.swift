//
//  PortfolioView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 14.09.2024.
//

import SwiftUI

struct PortfolioView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment: .leading,spacing: 0){
                    Text("Hi")
                }
            }
            .navigationTitle("Edit Portfolio")
            .navigationBarItems(leading: Image(systemName: "xmark"))
        }
    }
}

#Preview {
    PortfolioView()
}
