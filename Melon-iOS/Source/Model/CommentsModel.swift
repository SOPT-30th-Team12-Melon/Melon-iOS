// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Response
struct CommentsResponse: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: [CommentsData]?
}

// MARK: - CommentData
struct CommentsData: Codable {
    let albumID: String
    let userID: UserID
    let commentBody: String

    enum CodingKeys: String, CodingKey {
        case albumID = "albumId"
        case userID = "userId"
        case commentBody
    }
}

// MARK: - UserID
struct UserID: Codable {
    let id, nickName: String
    let image: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case nickName, image
    }
}
