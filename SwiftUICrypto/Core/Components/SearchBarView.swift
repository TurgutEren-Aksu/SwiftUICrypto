//
//  SearchBarView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 17.08.2024.
//

import SwiftUI

struct SearchBarView: View {
    @State var searchText: String = ""
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ? Color.theme.secondaryText : Color.theme.accent
                )
            
            TextField("Search", text: $searchText)
                .foregroundColor(Color.theme.accent)
        }
        .font(.headline)
        .padding()
        .background(
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.theme.background)
            .shadow(color: Color.theme.accent.opacity(0.15), radius:10, x: 0,y: 0)
        
        )
    }
}

#Preview {
    SearchBarView()
}
