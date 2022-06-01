//
//  NewMusicService.swift
//  Melon-iOS
//
//  Created by Sua Han on 2022/06/01.
//

import Foundation
import Alamofire

class FavoriteService {
    // 싱글톤 변수(Singleton)
    static let shared = FavoriteService()
    
    private init() {}
    
    func albumClick(name: String,
               completion: @escaping (NetworkResult<Any>) -> Void)
    {
        let url = APIConstants.newMusicGetURL + "all"                  // URL
        let header: HTTPHeaders = ["Content-Type" : "application/json"]     // HTTP Headers
        
        // Request 생성
        let dataRequest = AF.request(url,
                                    method: .get,
                                    encoding: JSONEncoding.default,
                                    headers: header)
        
        // Request 시작
        dataRequest.responseData { response in
            // 분기처리
            switch response.result {
            case .success:
                // 성공 시 Status Code, Value
                guard let statusCode = response.response?.statusCode else { return }
                guard let value = response.value else { return }
                
                // case 분기처리
                let networkResult = self.judgeStatus(by: statusCode, value)
                completion(networkResult)
            
            // 실패 시 networkFail(통신 실패)
            case .failure:
                completion(.networkFail)
            }
        }
    }
    
    // 상태 코드와 값(value, data)를 가지고 통신의 결과를 핸들링하는 함수입니다.
    private func judgeStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        // 성공 시 데이터를 decode(해독) 함수 호출
        case 200: return isVaildData(data: data)
        case 400: return .pathErr
        case 500: return .serverErr
        default: return .networkFail
        }
    }
    
    // 성공 시 데이터를 decode하는 함수
    // codable 채택해서 만든 데이터 모델(구조체 형식) 사용
    private func isVaildData(data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(NewMusicResponse.self, from: data)
        else { return .pathErr }
        
        return .success(decodedData as Any)
    }
}

