//
//  UIObjectTableViewController.swift
//  UIObject
//
//  Created by Justin Vallely on 8/7/18.
//  Copyright © 2018 JustinVallely. All rights reserved.
//

import UIKit

class UIObjectTableViewController: UITableViewController {

    var uiObject: UIObject?

    init(uiObject: UIObject) {
        super.init(style: .plain)
        self.uiObject = uiObject
        self.tableView.separatorStyle = .none
        self.tableView.allowsSelection = false
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        assertionFailure("not implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib.init(nibName: "UIObjectTableViewCell", bundle: nil), forCellReuseIdentifier: "UIObjectTableViewCell")
        navigationItem.title = "\(uiObject!.self)"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uiObject!.propertiesDict().count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UIObjectTableViewCell", for: indexPath) as? UIObjectTableViewCell
            else {
                return UITableViewCell()
        }

        cell.propertyNameLabel.text = uiObject!.propertyNames()[indexPath.row]
        cell.propertyValueLabel.text = uiObject!.propertyValues()[indexPath.row]
        return cell
    }
}
