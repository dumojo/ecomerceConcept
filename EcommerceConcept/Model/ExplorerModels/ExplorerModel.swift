//
//  ExplorerModel.swift
//  EcommerceConcept
//
//  Created by Артем Дорожкин on 02.12.2022.
//

import Foundation

struct Explorer: Codable {
    let hotSales: [HotSale]
    let bestSellers: [BestSeller]
    
    enum CodingKeys: String, CodingKey {
        case hotSales = "home_store"
        case bestSellers = "best_seller"
    }
}
