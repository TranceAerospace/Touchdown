//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Mark Trance on 4/15/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
