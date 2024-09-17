//
//  PortfolioView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 14.09.2024.
//

import SwiftUI

struct PortfolioView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment: .leading,spacing: 0){
                    Text("Hi")
                }
            }
            .navigationTitle("Edit Portfolio")
            .navigationBarItems(leading: 
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
               Image(systemName: "xmark")
                    .font(.headline)
            })
                                    
            )
        }
    }
}

#Preview {
    PortfolioView()
}
