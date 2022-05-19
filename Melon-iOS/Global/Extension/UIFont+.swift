//
//  UIFont+.swift
//  Melon-iOS
//
//  Created by 이유진 on 2022/05/17.
//

import UIKit

/*
 
 Description:
 - UIFont.noto(type: .bold, size: 12)
 
*/

extension UIFont {
    
    class func pretendard(type: PretendardKRType, size: CGFloat) -> UIFont! {
        guard let font = UIFont(name: type.name, size: size) else {
            return nil
        }
        return font
    }

    public enum PretendardKRType: String {
        case black = "Black"
        case bold = "Bold"
        case extraBold = "ExtraBold"
        case extraLight = "ExtraLight"
        case light = "Light"
        case medium = "Medium"
        case regular = "Regular"
        case seimiBold = "SemiBolde"
        case thin = "Thin"

        var name: String {
            "Pretendard-\(self.rawValue)"
        }
    }
}
