//
//  UIView+.swift
//  Melon-iOS
//
//  Created by 이유진 on 2022/05/17.
//


import UIKit

internal extension UIView {
    
    func addSubviews(_ views: [UIView]) {
        views.forEach { self.addSubview($0) }
    }
    
    /// 각 TVC,CVC의 className을 String으로 가져올 수 있도록 연산 프로퍼티를 설정합니다. 이 값들은 나중에 Identifier에 잘 써먹을 수 있습니다  (by. 송지훈 - 28기 iOS 파트장님)
    static var className: String {
        NSStringFromClass(self.classForCoder()).components(separatedBy: ".").last!
    }
    
    var className: String {
        NSStringFromClass(self.classForCoder).components(separatedBy: ".").last!
    }
}
