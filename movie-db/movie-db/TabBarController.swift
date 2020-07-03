//
//  TabBarController.swift
//  movie-db
//
//  Created by DATA on 7/3/20.
//  Copyright © 2020 Mishka TBC. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()

    }

    func setupTabBar(){
        tabBar.backgroundColor = UIColor(hexString: "1A1A1A",alpha: 1)
        tabBar.barTintColor = UIColor(hexString: "1A1A1A",alpha: 1)
        tabBar.tintColor = UIColor(hexString: "FFBB3B",alpha: 1)
    }
    
}
