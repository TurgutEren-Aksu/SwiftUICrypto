//
//  HomeStatsView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 30.08.2024.
//

import SwiftUI

struct HomeStatsView: View {
    
    let statistics: [StatisticModel] = [
    StatisticModel(title: "Title", value: "Value", percentageChange: 1),
    StatisticModel(title: "Title", value: "Value"),
    StatisticModel(title: "Title", value: "Value"),
    StatisticModel(title: "Title", value: "Value", percentageChange: -7),
    ]
    
    
    var body: some View {
        HStack{
            ForEach(statistics){ stat in
                StatisticView(stat: stat)
                
            }
        }
    }
}

#Preview {
    HomeStatsView()
}
