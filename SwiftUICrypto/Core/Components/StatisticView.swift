//
//  StatisticsView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 28.08.2024.
//

import SwiftUI

struct StatisticView: View {
    let stat: StatisticModel 
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text(stat.title)
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryText)
            Text(stat.value)
                .font(.headline)
                .foregroundStyle(Color.theme.accent)
            HStack(spacing: 4){
                
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(
                        Angle(degrees: (stat.percentageChange ?? 0) >= 0 ? 0 : 180)
                    
                    )
                
                Text(stat.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundStyle(Color((stat.percentageChange ?? 0) >= 0 ? Color.theme.green : Color.theme.red))
            .opacity(stat.percentageChange == nil ? 0.0 : 1.0)
            
            
        }
        
    }
}

#Preview {
    Group {
        StatisticView(stat: DeveloperProvider.instance.state1)
            .previewLayout(.sizeThatFits)
        StatisticView(stat: DeveloperProvider.instance.state2)
            .previewLayout(.sizeThatFits)
        StatisticView(stat: DeveloperProvider.instance.state3)
            .previewLayout(.sizeThatFits)
    }
}
