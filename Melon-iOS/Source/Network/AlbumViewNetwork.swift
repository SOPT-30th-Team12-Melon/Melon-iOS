//
//  AlbumViewNetwork.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/06/03.
//

import Foundation
import Alamofire

class AlbumViewNetwork{
    static let shared = AlbumViewNetwork()
    private init() {}
   
    //MARK: - Request Methods
    private func getAlbumInfo(albumId:String, completion : @escaping (NetworkResult<Any>) -> Void){
        let url = APIConstants.albumGetURL + albumId
        let header: HTTPHeaders = ["Content-Type": "application/json"]
        
        let dataRequest = AF.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: header)
        
        dataRequest.responseData {response in
            switch response.result{
            case .success:
                guard let statusCode = response.response?.statusCode else {return}
                guard let value = response.value else {return}
                let networkResult = self.judgeStatus(what : "getAlbumInfo", by: statusCode, value)
                completion(networkResult)
                
            case .failure:
                completion(.networkFail)
            }
        }
    }
    
    func getComments(albumId:String, completion : @escaping (NetworkResult<Any>) -> Void){
        let url = APIConstants.commentGetURL + albumId
        let header: HTTPHeaders = ["Content-Type": "application/json"]
        
        let dataRequest = AF.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: header)
        
        dataRequest.responseData {response in
            switch response.result{
            case .success:
                guard let statusCode = response.response?.statusCode else {return}
                guard let value = response.value else {return}
                let networkResult = self.judgeStatus(what : "getComments", by: statusCode, value)
                completion(networkResult)
                
            case .failure:
                completion(.networkFail)
            }
        }
    }
    // MARK: - judgeStatus Method
    func judgeStatus(what request : String, by statusCode : Int, _ data : Data) -> NetworkResult<Any>{
        let decoder = JSONDecoder()
        
        if request == "getAlbumInfo" {
            guard let decodedData = try? decoder.decode(AlbumInfoResponse.self, from: data)
            else {return .pathErr}
            
            switch statusCode{
            case 200: return .success(decodedData as Any)
            case 400: return .requestErr(decodedData.message)
            case 500: return .serverErr
            default : return .networkFail
            }
        }
        else if request == "getComments"{
                guard let decodedData = try? decoder.decode(CommentsResponse.self, from: data)
                else {return .pathErr}
                
                switch statusCode{
                case 200: return .success(decodedData as Any)
                case 500: return .serverErr
                default : return .networkFail
            }
        }
        
        return .networkFail
        
    }
}
    
   

