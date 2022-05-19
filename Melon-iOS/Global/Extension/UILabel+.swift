//
//  UILable+.swift
//  Melon-iOS
//
//  Created by 이유진 on 2022/05/17.
//

import UIKit


extension UILabel {
    
    
    /*
     Description: 자간, 행간과 관련된 Extension 입니다.
    */
    func addSpacing(kernValue: CGFloat = -0.6, paragraphValue: CGFloat = 0) {
        if let labelText = text, labelText.count > 0 {
            let attributedString = NSMutableAttributedString(string: labelText)
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = paragraphValue
            paragraphStyle.alignment = .left
            attributedString.addAttribute(NSAttributedString.Key.kern,
                                          value: kernValue,
                                          range: NSRange(location: 0,
                                                         length: attributedString.length - 1))
            attributedString.addAttribute(NSAttributedString.Key.paragraphStyle,
                                          value: paragraphStyle,
                                          range: NSMakeRange(0, attributedString.length))
            attributedText = attributedString
            
            if #available(iOS 14.0, *) {
                lineBreakStrategy = .hangulWordPriority
            } else {
                lineBreakMode = .byWordWrapping
            }
        }
    }
}
