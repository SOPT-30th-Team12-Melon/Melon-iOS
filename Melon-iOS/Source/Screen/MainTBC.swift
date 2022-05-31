//
//  MainTBC.swift
//  Melon-iOS
//
//  Created by 이의진 on 2022/06/01.
//

import UIKit

class MainTBC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configurationUI()
    }
    
    private func configurationUI(){
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.backgroundColor = .darkGray
        tabBarAppearance.stackedLayoutAppearance.normal.iconColor = .gray
        tabBarAppearance.stackedLayoutAppearance.selected.iconColor = .green1
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        tabBar.isTranslucent = false
    }
}


