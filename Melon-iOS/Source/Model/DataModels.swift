//
//  DataModels.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/05/27.
//

import Foundation


struct FavoriteMusicItemDataModel{
    var imageName : String
    var title : String
    var hashTag : String
    var topic : String
}

struct NewMusicItemDataModel{
    var imageName : String
    var title : String
    var singer : String
}


extension FavoriteMusicItemDataModel{
    static let sampleData : [FavoriteMusicItemDataModel] = [
        FavoriteMusicItemDataModel(imageName: "dummy1", title: "POP 갬성 폭발 분위기 끝...", hashTag: "#분위기 #팝송", topic: "이번 주 인기 플레이리스트"),
        FavoriteMusicItemDataModel(imageName: "dummy2", title: "청춘드라마 주인공처럼", hashTag: "#기분전환 #기분좋아지기",topic: "오늘의 감상 테마")]
       
}

extension NewMusicItemDataModel{
    static let sampleData : [NewMusicItemDataModel] = [
        NewMusicItemDataModel(imageName: "dummy3", title: "마음을 담아줘", singer: "타코앤제이형"),
        NewMusicItemDataModel(imageName: "dummy4", title: "Neo Seoul", singer: "트웰브"),
        NewMusicItemDataModel(imageName: "dummy5", title: "My Side", singer: "송하예")]
}
