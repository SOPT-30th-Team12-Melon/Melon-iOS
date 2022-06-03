// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Response
struct AlbumInfoResponse: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: AlbumInfoData?
}

// MARK: - DataClass
struct AlbumInfoData: Codable {
    let id: String
    let albumImage: String
    let albumTitle, albumDate: String
    let albumScope, numberPeople: Int
    let singerImage: String
    let singerName: String
    let likeNumber, singNumber: Int
    let albumSing: [AlbumSing]
    let albumTime, albumCompany, albumContent, albumGenre: String
    let albumType, company: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case albumImage, albumTitle, albumDate, albumScope, numberPeople, singerImage, singerName, likeNumber, singNumber, albumSing, albumTime, albumCompany, albumContent, albumGenre, albumType, company
    }
}

// MARK: - AlbumSing
struct AlbumSing: Codable {
    let number: Int
    let singname, singTime: String
}
