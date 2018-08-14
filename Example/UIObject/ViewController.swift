//
//  ViewController.swift
//  UIObject
//
//  Created by justinvallely on 08/07/2018.
//  Copyright (c) 2018 justinvallely. All rights reserved.
//

import UIObject

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonAction(_ sender: Any) {

        let personViewController = UIObjectViewController(uiObject: Person())

        /* PUSH the view onto the nav stack */
        self.navigationController?.pushViewController(personViewController, animated: true)

        /* PRESENT the view modally */
//        let modalViewWithNavigationBar: UINavigationController = UINavigationController(rootViewController: personViewController)
//        self.present(modalViewWithNavigationBar, animated: true)
    }
}

