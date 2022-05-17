//
//  MainDataModel.swift
//  Melon-iOS
//
//  Created by Sua Han on 2022/05/17.
//

import UIKit

// Music
struct MusicDataModel {
    let albumCoverImageName: String
    var albumImage: UIImage? {
        return UIImage(named: albumCoverImageName)
    }
    let musicTitle: String
    let artist: String
    var artistLabel: String? {
        return "-    \(artist)"
    }
}
// Dummy
extension MusicDataModel {
    static let sampleData: [MusicDataModel] = [
        MusicDataModel(albumCoverImageName: "image url1", musicTitle: "title1", artist: "artist1"),
        MusicDataModel(albumCoverImageName: "image url2", musicTitle: "title2", artist: "artist2"),
        MusicDataModel(albumCoverImageName: "image url3", musicTitle: "title3", artist: "artist3")
    ]
}


// Curation
struct CurationDataModel {
    let curationTitle: String
    let themaCoverImageName: String
    var themaImage: UIImage? {
        return UIImage(named: themaCoverImageName)
    }
    let themaTitle: String
    let themahashtag: String
}
// Dummy
extension CurationDataModel {
    static let sampleData: [CurationDataModel] = [
        CurationDataModel(
            curationTitle: "이번 주 인기 플레이리스트",
            themaCoverImageName: "image1",
            themaTitle: "POP 갬성 폭발 분위기 끝판왕",
            themahashtag: "#분위기 #팝송"
        ),
        CurationDataModel(
            curationTitle: "오늘의 감상 테마",
            themaCoverImageName: "image2",
            themaTitle: "청춘드라마 주인공처럼",
            themahashtag: "#기분전환 #기분좋아지기"
        ),
    ]
}
