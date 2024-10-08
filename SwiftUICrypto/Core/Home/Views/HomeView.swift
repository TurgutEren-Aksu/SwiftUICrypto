//
//  HomeView.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 18.04.2024.
//

import SwiftUI

struct HomeView: View {
	
	@State private var showPortfolio: Bool = false
	@EnvironmentObject private var vm: HomeViewModel
    @State private var showPortfolioView:Bool = false
    var body: some View {
		ZStack{
			Color.theme.background.ignoresSafeArea()
                .sheet(isPresented: $showPortfolioView, content: {
                    PortfolioView()
                        .environmentObject(vm)
                })
			VStack{
				 
				homeHeader
				HomeStatsView(showPortfolio: $showPortfolio)
                SearchBarView(searchText: $vm.searchText)
                
				columnTitles
				
				if !showPortfolio{
					allCoinList
					.transition(.move(edge: .leading))
				}
				if showPortfolio{
					portfolioCoinsList
						.transition(.move(edge: .trailing))
				}
				Spacer(minLength: 0)
			}
		}
    }
}

#Preview {
	NavigationView {
		HomeView()
			.navigationBarHidden(true)
	}
	.environmentObject(DeveloperProvider.instance.homeVM)
}
extension HomeView {
	private var homeHeader: some View{
		HStack{
			CircleButtonView(iconName: showPortfolio ? "plus" : "info")
				.animation(.none)
                .onTapGesture {
                    if showPortfolio{
                        showPortfolioView.toggle()
                    }
                }
				.background(
				CircleButtonAnimationView(animate: $showPortfolio)
				)
			Spacer()
			Text(showPortfolio ? "Portfolio" : "Live Prices")
				.font(.headline)
				.fontWeight(.heavy)
				.foregroundStyle(Color.theme.accent)
				.animation(.none)
			Spacer()
			CircleButtonView(iconName: "chevron.right")
				.rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
				.onTapGesture {
					withAnimation(.spring()) {
						showPortfolio.toggle()
					}
				}
		}
		.padding(.horizontal)
	}
	private var allCoinList: some View{
		List{
			ForEach(vm.allCoins){ coin in
			CoinRowView(coin: coin, showHoldingsColumns: false)
					.listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
			}
		}
		.listStyle(PlainListStyle())
	}
	private var portfolioCoinsList: some View{
		List{
			ForEach(vm.portfolioCoins){ coin in
			CoinRowView(coin: coin, showHoldingsColumns: true)
					.listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
			}
		}
		.listStyle(PlainListStyle())
	}
	private var columnTitles: some View{
		HStack{
			Text("Coin")
			Spacer()
			
			if showPortfolio{
				Text("Holdings")
			}
			Text("Price")
				.frame(width: UIScreen.main.bounds.width/3.5, alignment: .trailing)
		}
		.font(.caption)
		.foregroundStyle(Color.theme.secondaryText)
		.padding(.horizontal)
	}
}
