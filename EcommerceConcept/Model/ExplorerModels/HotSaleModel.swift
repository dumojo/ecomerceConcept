//
//  HotSalesModel.swift
//  EcommerceConcept
//
//  Created by Артем Дорожкин on 02.12.2022.
//

import Foundation

struct HotSale: Identifiable, Codable {
    let id: Int
    let isNew: Bool?
    let title: String
    let subtitle: String
    let picture: String
    let isBuy: Bool
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case isNew = "is_new"
        case title = "title"
        case subtitle = "subtitle"
        case picture = "picture"
        case isBuy = "is_buy"
    }
}
