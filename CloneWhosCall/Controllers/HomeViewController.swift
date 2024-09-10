//
//  HomeViewController.swift
//  CloneWhosCall
//
//  Created by CHEN TSAI-MING on 2024/8/14.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let shieldLogo: HomeShieldUIView = {
        let logo = HomeShieldUIView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(shieldLogo)
        
        configNavBar()
        configConstraint()
    }
    
    func configNavBar(){
        let image = UIImage(systemName: "ellipsis.rectangle")
//        image?.withTintColor(UIColor.systemGreen)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: #selector(goToSetting))
    }
    
    
    @objc
    func goToSetting(){
        print("Tapp setting")
    }
    
    func configConstraint(){
        NSLayoutConstraint.activate([
            shieldLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            shieldLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
