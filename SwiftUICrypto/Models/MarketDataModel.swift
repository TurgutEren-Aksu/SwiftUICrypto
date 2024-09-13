//
//  MarketDataModel.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 2.09.2024.
//

import Foundation

//JSON data:
/*
 
 JSON Response:
 {
 "data": {
 "active_cryptocurrencies": 14662,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 1185,
 "total_market_cap": {
 "btc": 36648799.47433156,
 "eth": 854010794.5207611,
 "ltc": 33224425242.739056,
 "bch": 6692628464.861688,
 "bnb": 4115874996.954443,
 "eos": 4557676323238.996,
 "xrp": 3817755040879.6294,
 "xlm": 23447597220626.875,
 "link": 201263010902.61218,
 "dot": 515049630019.28406,
 "yfi": 423748764.4350172,
 "usd": 2167897657518.1638,
 "aed": 7962525503739.902,
 "ars": 2065474031950121,
 "aud": 3194121875350.5093,
 "bdt": 259044122416950.28,
 "bhd": 816746770879.3365,
 "bmd": 2167897657518.1638,
 "brl": 12176213983216.531,
 "cad": 2926380010954.0435,
 "chf": 1845752401406.279,
 "clp": 1988896934238793,
 "cny": 15430228367151.275,
 "czk": 49044350873931.18,
 "dkk": 14610589620796.814,
 "eur": 1958780081576.303,
 "gbp": 1649733263111.1428,
 "gel": 5831644698723.858,
 "hkd": 16902944114935.426,
 "huf": 768849380947480.8,
 "idr": 33723382380821052,
 "ils": 7916728665724.835,
 "inr": 181953716401967.06,
 "jpy": 318117302264215.1,
 "krw": 2901520678653634.5,
 "kwd": 662407632947.6469,
 "lkr": 648048779602842.9,
 "mmk": 4548249285473100,
 "mxn": 43014124581880.94,
 "myr": 9441194298491.582,
 "ngn": 3446892238524154,
 "nok": 22961595881070.97,
 "nzd": 3480525002782.8896,
 "php": 122436356003653.25,
 "pkr": 603995130750998.8,
 "pln": 8364280297631.168,
 "rub": 194677235659902.72,
 "sar": 8135443524596.534,
 "sek": 22222392641503.42,
 "sgd": 2833518114794.253,
 "thb": 74104161678114.48,
 "try": 73530349518736.83,
 "twd": 69539436370444.414,
 "uah": 89250761826835.28,
 "vef": 217071592447.2936,
 "vnd": 53926454230764450,
 "zar": 38616760973370.97,
 "xdr": 1609848282008.1245,
 "xag": 76003912074.37437,
 "xau": 867679358.4450693,
 "bits": 36648799474331.555,
 "sats": 3664879947433156
 },
 "total_volume": {
 "btc": 1214615.3097522443,
 "eth": 28303644.337520663,
 "ltc": 1101124624.4454455,
 "bch": 221807238.23158553,
 "bnb": 136408418.72129345,
 "eos": 151050607891.7711,
 "xrp": 126528120649.19025,
 "xlm": 777100777367.1969,
 "link": 6670263087.345081,
 "dot": 17069786046.929213,
 "yfi": 14043890.772789272,
 "usd": 71848511344.60294,
 "aed": 263894193530.3758,
 "ars": 68453985317020.29,
 "aud": 105859656705.33167,
 "bdt": 8585245942621.729,
 "bhd": 27068639255.033726,
 "bmd": 71848511344.60294,
 "brl": 403544348818.0973,
 "cad": 96986150008.73917,
 "chf": 61171966255.81761,
 "clp": 65916065478153.06,
 "cny": 511388964346.34564,
 "czk": 1625428943997.467,
 "dkk": 484224479177.1784,
 "eur": 64917932091.79116,
 "gbp": 54675495708.54991,
 "gel": 193272495516.98184,
 "hkd": 560197741709.5632,
 "huf": 25481222915539.402,
 "idr": 1117661072774374.4,
 "ils": 262376393728.2212,
 "inr": 6030314028783.835,
 "jpy": 10543050554707.03,
 "krw": 96162261476634.77,
 "kwd": 21953528186.87744,
 "lkr": 21477646756837.656,
 "mmk": 150738176800976.72,
 "mxn": 1425575052992.8064,
 "myr": 312900266905.7451,
 "ngn": 114236977582578.31,
 "nok": 760993710394.972,
 "nzd": 115351635387.57845,
 "php": 4057788375209.1377,
 "pkr": 20017619767866.957,
 "pln": 277209159652.75757,
 "rub": 6451997180927.471,
 "sar": 269625046340.75568,
 "sek": 736495020542.2241,
 "sgd": 93908519025.2931,
 "thb": 2455961739036.885,
 "try": 2436944443963.1343,
 "twd": 2304677513549.695,
 "uah": 2957950690795.514,
 "vef": 7194191440.935088,
 "vnd": 1787231719697002.2,
 "zar": 1279837532581.4094,
 "xdr": 53353626796.83194,
 "xag": 2518923308.013279,
 "xau": 28756648.18056386,
 "bits": 1214615309752.2444,
 "sats": 121461530975224.42
 },
 "market_cap_percentage": {
 "btc": 53.88648545999936,
 "eth": 14.084724834193404,
 "usdt": 5.45190356418234,
 "bnb": 3.5439491067878097,
 "sol": 2.9103787673957173,
 "usdc": 1.6050616385319196,
 "xrp": 1.4734559081721756,
 "steth": 1.1478698635027955,
 "doge": 0.6670345031521416,
 "trx": 0.6166942453664284
 },
 "market_cap_change_percentage_24h_usd": 2.1857280681270086,
 "updated_at": 1725320869
 }
 }
 
 */
struct GloabalData: Codable{
    let data: MarketDataModel?
}

struct MarketDataModel: Codable{
    let totalMarketCap, totalVolume, marketCapPercentage: [String:Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String,CodingKey{
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    var marketCap: String{
        if let item = totalMarketCap.first(where: { $0.key == "usd" }){
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    var volume: String{
        if let item = totalVolume.first(where: { $0.key == "usd" }){
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    var btcDominance: String{
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }){
            return item.value.asPercentString()
        }
        return ""
    }
}
