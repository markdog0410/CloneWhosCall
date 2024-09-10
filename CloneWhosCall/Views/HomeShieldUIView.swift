//
//  HomeShieldUIView.swift
//  CloneWhosCall
//
//  Created by CHEN TSAI-MING on 2024/8/15.
//

import UIKit

class HomeShieldUIView: UIView {
    
    private let shieldLogo: UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = UIImage(named: "safe_shield")
        logo.clipsToBounds = true
        logo.contentMode = .scaleAspectFill
        return logo
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(shieldLogo)
        addSubview(label)
        
        configConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraint(){
        NSLayoutConstraint.activate([
            shieldLogo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            shieldLogo.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            shieldLogo.heightAnchor.constraint(equalToConstant: 80),
            shieldLogo.widthAnchor.constraint(equalToConstant: 80),
        ])
    }
    
}
