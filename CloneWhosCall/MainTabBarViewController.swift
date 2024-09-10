//
//  MainTabBarViewController.swift
//  CloneWhosCall
//
//  Created by CHEN TSAI-MING on 2024/8/14.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: SmsViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: BlockViewController())
        let vc5 = UINavigationController(rootViewController: AdvenceViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "checkmark.shield")
        vc2.tabBarItem.image = UIImage(systemName: "envelope")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "xmark.circle")
        vc5.tabBarItem.image = UIImage(systemName: "shield.checkered")
        
        vc1.title = "來電防護"
        vc2.title = "簡訊管家"
        vc3.title = "反查號碼"
        vc4.title = "手動封鎖"
        vc5.title = "進階防護"
        
        tabBar.tintColor = .systemGreen
        
        setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: true)
    }
    


}
