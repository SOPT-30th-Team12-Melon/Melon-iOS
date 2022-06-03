//
//  CommentPostingModel.swift
//  Melon-iOS
//
//  Created by 이유진 on 2022/06/03.
//

import Foundation

// MARK: - Main
struct CommentResponse: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: CommentData?
}

// MARK: - DataClass
struct CommentData: Codable {
    let id: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
    }
}
