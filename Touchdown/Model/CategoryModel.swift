//
//  CategoryModel.swift
//  Touchdown
//
//  Created by magnodev
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
