//
//  APIConstants.swift
//  Melon-iOS
//
//  Created by Sua Han on 2022/06/01.
//

import Foundation

struct APIConstants {
    // base URL
    static let baseURL = "http://takeusbackdev-env.eba-zha4u22c.ap-northeast-2.elasticbeanstalk.com"
    
    // [POST] 댓글 작성
    static let commentPostURL = baseURL + "/comment/"
    // [GET] 댓글 조회
    static let commentGetURL = baseURL + "/comment/album/"
    // [GET] 앨범 세부 조회
    static let albumGetURL = baseURL + "/album/"
    // [GET] 내가 좋아할 음악 조회
    static let favoriteMusicGetURL = baseURL + "/playlist/main"
    // [GET] 최신음악 조회
    static let newMusicGetURL = baseURL + "/album/recent?type="
    
    
    


}
