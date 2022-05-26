//
//  MainDataModel.swift
//  Melon-iOS
//
//  Created by Sua Han on 2022/05/17.
//

import UIKit

// Music : 최신 음악
struct MusicDataModel {
    let albumId: String //albumId
    let albumCoverImageName: String //image
    var albumImage: UIImage? {
        return UIImage(named: albumCoverImageName)
    }
    let musicTitle: String  //title
    let artist: String  //singer
    var artistLabel: String? {
        return "-    \(artist)"
    }
}
// Dummy
extension MusicDataModel {
    static let sampleData: [MusicDataModel] = [
        MusicDataModel(albumId: "1", albumCoverImageName: "image url1", musicTitle: "title1", artist: "artist1"),
        MusicDataModel(albumId: "2", albumCoverImageName: "image url2", musicTitle: "title2", artist: "artist2"),
        MusicDataModel(albumId: "3", albumCoverImageName: "image url3", musicTitle: "title3", artist: "artist3")
    ]
}


// Curation : 내가 좋아할 음악(내 추천 음악)
struct CurationDataModel {
    let curationTitle: String   //title
    let themaCoverImageName: String //image
    var themaImage: UIImage? {
        return UIImage(named: themaCoverImageName)
    }
    let themaTitle: String  //body
    let themahashtag: String    //hashtag
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
