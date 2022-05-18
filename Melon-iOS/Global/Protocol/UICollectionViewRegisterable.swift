//
//  UICollectionViewRegisterable.swift
//  Melon-iOS
//
//  Created by 이유진 on 2022/05/19.
//

import UIKit

protocol UICollectionViewRegisterable {
    static func register(target: UICollectionView)
}

extension UICollectionViewRegisterable where Self: UICollectionViewCell {
    static func register(target: UICollectionView) {
        target.register(Self.self, forCellWithReuseIdentifier: Self.className)
    }
}
