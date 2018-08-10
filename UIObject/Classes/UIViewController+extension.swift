//
//  UIViewController+extension.swift
//  UIObject
//
//  Created by Justin Vallely on 8/10/18.
//  Copyright © 2018 JustinVallely. All rights reserved.
//

import Foundation

extension UIViewController {

    func isModal() -> Bool {
        if presentingViewController != nil {
            return true
        }
        if navigationController?.presentingViewController?.presentedViewController == navigationController {
            return true
        }
        if tabBarController?.presentingViewController is UITabBarController {
            return true
        }
        return false
    }
}
