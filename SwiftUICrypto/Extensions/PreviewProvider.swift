//
//  PreviewProvider.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 13.05.2024.
//

import Foundation
import SwiftUI

extension PreviewProvider {
	static var dev: DeveloperProvider{
		return DeveloperProvider.instance
	}
}

class DeveloperProvider {
	static let instance = DeveloperProvider()
	private init() { }
	
	
	let homeVM = HomeViewModel()
	
	let coin = CoinModel(
		id: "bitcoin",
		symbol: "btc",
		name: "Bitcoin",
		image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
		currentPrice: 61861,
		marketCap: 1216569382035,
		marketCapRank: 1,
		fullyDilutedValuation: 1296973658198,
		totalVolume: 22229501628,
		high24H: 63340,
		low24H: 61491,
		priceChange24H: -918.0713120470828,
		priceChangePercentage24H: -1.46238,
		marketCapChange24H: -21176270163.237305,
		marketCapChangePercentage24H: -1.71087,
		circulatingSupply: 19698131,
		totalSupply: 21000000,
		maxSupply: 21000000,
		ath: 73738,
		athChangePercentage: -16.29471,
		athDate: "2024-03-14T07:10:36.635Z",
		atl: 67.81,
		atlChangePercentage: 90924.13122,
		atlDate: "2013-07-06T00:00:00.000Z",
		lastUpdated: "2024-05-14T09:00:25.008Z",
		sparklineIn7D: SparklineIn7D(price: [
		 63496.768179035316,
		 63632.89848326936,
		 63663.818876285746,
		 64212.19709292666,
		 64119.71998385092,
		 64116.12927448792,
		 63468.99686982879,
		 63703.36947560427,
		 63188.03237060196,
		 63924.427611744424,
		 63750.21535751091,
		 63589.72691894206,
		 63386.4537505125,
		 63144.98056897169,
		 63003.25359280013,
		 62979.36161197166,
		 63009.79283371254,
		 62888.90234109461,
		 62397.517143100675,
		 62599.863508753064,
		 62680.95184827074,
		 62763.17350628415,
		 62910.51378457303,
		 62390.05567951534,
		 62656.54231077052,
		 62500.0404697605,
		 62182.63603484952,
		 62322.58785155512,
		 62263.561792346016,
		 62434.317812083726,
		 62230.52954238977,
		 62234.8425865664,
		 62485.480734804514,
		 62657.19648842473,
		 62205.35022508277,
		 62329.81366321528,
		 62585.24004021866,
		 62470.03175598231,
		 62168.51471480166,
		 61576.12667634392,
		 61470.431741621825,
		 61191.6142999104,
		 61188.171092793484,
		 61416.193756613946,
		 61538.61005347314,
		 61645.636785989576,
		 61655.417680172555,
		 61457.13999309412,
		 61589.88582761997,
		 61652.16010799637,
		 61198.771954639844,
		 61203.095826454286,
		 61163.46488622582,
		 60901.52876154418,
		 61035.9710585606,
		 61500.62518475043,
		 61147.079201612054,
		 61360.54512880985,
		 62115.84292520082,
		 61862.857877488736,
		 61921.076154647504,
		 62194.471471387165,
		 62435.95447004265,
		 62637.36181836728,
		 62521.57396629488,
		 63284.33092095749,
		 63065.330986404886,
		 62825.74927172495,
		 62824.69871022497,
		 62892.17344649172,
		 62940.269660969374,
		 62935.87228780579,
		 62765.372901150324,
		 63166.66640113653,
		 63067.154889866055,
		 63002.42977884493,
		 63108.84878589338,
		 62982.420940170116,
		 63293.98021126339,
		 63000.2169478931,
		 63077.50710617616,
		 61168.27535404197,
		 60904.102201790425,
		 61096.28969321915,
		 60380.27918355821,
		 60728.49255995195,
		 60848.57200632149,
		 60484.471181131,
		 60682.91242215552,
		 60832.766987637995,
		 60789.56750626353,
		 60773.54994646332,
		 60860.97223343809,
		 60870.6918557564,
		 60705.104283567445,
		 60775.360366760826,
		 60913.17497969049,
		 60954.93120578414,
		 61040.8585189548,
		 60848.68909601402,
		 60830.075239673315,
		 60779.448381933005,
		 60667.309335915634,
		 60702.5334999328,
		 60940.46699084769,
		 60833.80262669601,
		 61158.04125484788,
		 61133.63821230689,
		 61094.52353195651,
		 61201.346621722114,
		 61111.8454324027,
		 60980.74573990139,
		 60911.590451048956,
		 60900.91217858448,
		 60794.62996994819,
		 60970.84425996559,
		 60852.24431256182,
		 60918.92871490222,
		 60899.8805263828,
		 61092.78231027553,
		 61038.23348450181,
		 60943.72578257829,
		 60770.68605394167,
		 61004.177890961204,
		 60983.31589512767,
		 61129.68842738917,
		 61124.23072358595,
		 61127.32994256733,
		 61192.374306342885,
		 61137.1024934283,
		 61343.01787721173,
		 61335.78351592226,
		 61617.61668387327,
		 61359.222378965525,
		 61370.6041164787,
		 61283.90866089898,
		 61217.793717411136,
		 61289.84129283134,
		 61483.57956859696,
		 61477.73259399339,
		 61396.47942597874,
		 61045.93904295089,
		 61105.79234404049,
		 60957.755413686304,
		 60911.93493502443,
		 61523.22208208094,
		 62372.04914641129,
		 62779.465493647054,
		 63044.421992331445,
		 62696.38199274132,
		 62704.04428737638,
		 62828.340591909,
		 62806.20336434338,
		 62747.48025164516,
		 63006.72441190027,
		 63147.80566932386,
		 62810.087400130564,
		 62719.96140954148,
		 63105.10787334924,
		 63064.08945303417,
		 62851.33790146676,
		 62796.348028864515,
		 62904.91827180202,
		 62792.536773319815,
		 62643.06636548726,
		 62530.74609104688,
		 62422.121820453125,
		 62509.17640288571
		 ]),
		
		priceChangePercentage24HInCurrency: -1.4623751649175585,
		currentHoldings: 1.5)
	
}
