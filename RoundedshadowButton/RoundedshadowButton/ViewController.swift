//
//  ViewController.swift
//  RoundedshadowButton
//
//  Created by Dongwan Ryoo on 2023/03/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var roundedShadowButton:RoundedShadowButton = {
        let button = RoundedShadowButton()
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
    }
    
    private func configure(){
        roundedShadowButton.isBorderStyle = true
        roundedShadowButton.setTitle("커스텀 버튼", for: .normal)
        roundedShadowButton.setTitle("선택된 버튼", for: .selected)
        roundedShadowButton.setImage(#imageLiteral(resourceName: "favoriteCompanyOff"), for: .normal)
        roundedShadowButton.setImage(#imageLiteral(resourceName: "favoriteCompanyOn"), for: .selected)
        
        view.addSubview(roundedShadowButton)
        roundedShadowButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        
    }
    
}
