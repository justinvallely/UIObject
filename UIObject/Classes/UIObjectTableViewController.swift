//
//  UIObjectTableViewController.swift
//  UIObject
//
//  Created by Justin Vallely on 8/7/18.
//  Copyright © 2018 JustinVallely. All rights reserved.
//

import UIKit

public class UIObjectTableViewController: UITableViewController {

    public var uiObject: UIObject?

    public init(uiObject: UIObject) {
        super.init(style: .plain)
        self.uiObject = uiObject
        self.tableView.separatorStyle = .none
        self.tableView.allowsSelection = false
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        assertionFailure("not implemented")
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UIObjectTableViewCell.self, forCellReuseIdentifier: "UIObjectTableViewCell")
        navigationItem.title = "\(uiObject!.self)"
    }

    // MARK: - Table view data source

    override public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uiObject!.propertiesDict().count
    }

    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UIObjectTableViewCell", for: indexPath) as? UIObjectTableViewCell
            else {
                return UITableViewCell()
        }

        cell.propertyNameLabel.text = uiObject!.propertyNames()[indexPath.row]
        cell.propertyValueLabel.text = uiObject!.propertyValues()[indexPath.row]
        return cell
    }
}
