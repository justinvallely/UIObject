//
//  ViewController.swift
//  UIObject
//
//  Created by justinvallely on 08/07/2018.
//  Copyright (c) 2018 justinvallely. All rights reserved.
//

import UIKit
import UIObject

class ViewController: UIViewController {

    let button = UIButton(type: .custom)
    let person = Person()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "UIObject Example"

        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.cornerRadius = 5
        button.setTitle("View Object", for: [])
        button.setTitleColor(.blue, for: [])
        button.addTarget(self, action: #selector(displayObjectProperties), for: .touchUpInside)

        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true

        self.view.addSubview(button)
        self.view.centerXAnchor.constraint(equalTo: button.centerXAnchor).isActive = true
        self.view.centerYAnchor.constraint(equalTo: button.centerYAnchor).isActive = true
        self.view.backgroundColor = .white
    }

    @objc private func displayObjectProperties() {

        let vc = UIObjectTableViewController(uiObject: person)
        self.navigationController?.pushViewController(vc, animated: true)

    }
}

