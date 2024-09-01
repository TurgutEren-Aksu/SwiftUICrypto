//
//  HomeStatsView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 30.08.2024.
//

import SwiftUI

struct HomeStatsView: View {
    
    @EnvironmentObject private var vm : HomeViewModel
    
    @Binding var showPortfolio: Bool
    
    var body: some View {
        HStack{
            ForEach(vm.statistics){ stat in
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
                
            }
        }
        .frame(width:  UIScreen.main.bounds.width, alignment: showPortfolio ? .trailing : .leading)
    }
}

#Preview {
    HomeStatsView(showPortfolio: .constant(false))
        .environmentObject(DeveloperProvider.instance.homeVM)
}
