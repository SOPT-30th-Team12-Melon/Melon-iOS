//
//  UITableViewRegisterable.swift
//  Melon-iOS
//
//  Created by 이유진 on 2022/05/19.
//

import UIKit

protocol UITableViewRegisterable {
    static func register(target: UITableView)
}

extension UITableViewRegisterable where Self: UITableViewCell {
    static func register(target: UITableView) {
        target.register(Self.self, forCellReuseIdentifier: Self.className)
    }
}
