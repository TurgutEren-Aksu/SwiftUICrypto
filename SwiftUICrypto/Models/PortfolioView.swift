//
//  PortfolioView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 14.09.2024.
//

import SwiftUI

struct PortfolioView: View {
    @EnvironmentObject private var vm: HomeViewModel
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment: .leading,spacing: 0){
                    SearchBarView(searchText: $vm.searchText)
                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    XMarkButton()
                }
            })
        }
    }
}

#Preview {
    PortfolioView()
        .environmentObject(DeveloperProvider.instance.homeVM)
}
