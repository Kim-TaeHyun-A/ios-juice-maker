//
//  UIViewController.swift
//  JuiceMaker
//
//  Created by 김태현 on 2022/03/07.
//

import UIKit

protocol UIViewControllerable {
    var alertBuilder: AlertBuilderable { get }
}

extension UIViewController: UIViewControllerable {
    static var identifier: String {
        return String(describing: self)
    }
    
    var alertBuilder: AlertBuilderable {
        AlertBuilder(viewController: self)
    }
}
