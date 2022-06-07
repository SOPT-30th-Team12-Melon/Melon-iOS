//
//  FavoriteMusicModel.swift
//  Melon-iOS
//
//  Created by Sua Han on 2022/06/01.
//

import Foundation

struct FavoriteMusicResponse: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: [FavoriteMusicData]
    let total: Int
}

struct FavoriteMusicData: Codable {
    let title: String
    let image: String
    let body: String
    let hashtag: [String]
}
