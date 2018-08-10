//
//  ViewController.swift
//  UIObject
//
//  Created by justinvallely on 08/07/2018.
//  Copyright (c) 2018 justinvallely. All rights reserved.
//

import UIKit
import UIObject

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonAction(_ sender: Any) {

        let vc = UIObjectViewController(uiObject: Person())

        /* PUSH the view onto the nav stack */
        self.navigationController?.pushViewController(vc, animated: true)

        /* PRESENT the view modally */
//        let navBarOnModal: UINavigationController = UINavigationController(rootViewController: vc)
//        self.present(navBarOnModal, animated: true)
    }
}

