//
//  BaseViewController.swift
//  RxBullsEye
//
//  Created by jae hyeong ahn on 2020/01/28.
//  Copyright © 2020 usinuniverse. All rights reserved.
//

import UIKit

import RxSwift

class BaseViewController: UIViewController {
    // MARK: - Enum
    
    enum ButtonType {
        case start
        case hallOfFame
        case register
    }
    
    enum NavigationBarSide {
        case left
        case right
    }
    
    // MARK: - Properties
    
    var disposeBag = DisposeBag()
    
    // MARK: - Methods
    
    @discardableResult
    func setNavigationBarButton(type: ButtonType, at side: NavigationBarSide) -> UIButton {
        let button = UIButton(type: .system)
        var imageName: String
        
        switch type {
        case .start:
            imageName = "play"
            
        case .hallOfFame:
            imageName = "list"
            
        case .register:
            imageName = "register"
        }
        
        button.setImage(UIImage(named: imageName), for: .normal)
        let barButtonItem = UIBarButtonItem(customView: button)
        
        switch side {
        case .left:
            self.navigationItem.leftBarButtonItem = barButtonItem
            
        case .right:
            self.navigationItem.rightBarButtonItem = barButtonItem
        }
        
        return button
    }
    
}
