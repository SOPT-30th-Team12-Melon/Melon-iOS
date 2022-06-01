//
//  FavoriteMusicModel.swift
//  Melon-iOS
//
//  Created by Sua Han on 2022/06/01.
//

import Foundation

struct FavoriteResponse: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: [FavoriteData]
    let total: Int
}

struct FavoriteData: Codable {
    let title: String
    let image: String
    let body: String
    let hashtag: [String]
}
