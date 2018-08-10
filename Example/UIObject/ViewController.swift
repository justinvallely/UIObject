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

    @IBOutlet weak var button: UIButton!
    private let person = Person()

    override func viewDidLoad() {
        super.viewDidLoad()

        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.cornerRadius = 5
    }

    @IBAction func buttonAction(_ sender: Any) {
        let vc = UIObjectTableViewController(uiObject: person)

        // push the view onto the nav stack
        self.navigationController?.pushViewController(vc, animated: true)

        // present the view modally
//        let navBarOnModal: UINavigationController = UINavigationController(rootViewController: vc)
//        self.present(navBarOnModal, animated: true)
    }
}

