//
//  UIStackView+.swift
//  Melon-iOS
//
//  Created by 이유진 on 2022/05/17.
//

import UIKit

extension UIStackView {
    
    public func addArrangedSubviews(_ view: [UIView]) {
        view.forEach{ self.addArrangedSubview($0) }
    }
}
