//
//  NewMusicModel.swift
//  Melon-iOS
//
//  Created by Sua Han on 2022/06/01.
//

import Foundation

struct NewMusicResponse: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: [NewMusicData]?
    let total: Int?
}

struct NewMusicData: Codable {
    let title, albumId, singer, image: String
}
