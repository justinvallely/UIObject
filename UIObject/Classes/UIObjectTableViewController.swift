//
//  UIObjectViewController.swift
//  UIObject
//
//  Created by Justin Vallely on 8/7/18.
//  Copyright © 2018 JustinVallely. All rights reserved.
//

import UIKit

open class UIObjectViewController: UIViewController {

    open var uiObject: UIObject!
    open var tableView = UITableView()

    public init(uiObject: UIObject) {
        super.init(nibName: nil, bundle: nil)
        self.uiObject = uiObject
        self.tableView.separatorStyle = .none
        self.tableView.allowsSelection = false
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        assertionFailure("not implemented")
    }

    override open func viewDidLoad() {
        super.viewDidLoad()

        configureNavBar()
        configureTableView()
    }

    private func configureNavBar() {
        if self.isModal() {
            let closeButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.stop, target: self, action: #selector(close))
            navigationItem.leftBarButtonItem = closeButton
        }

        if let objectType = uiObject.self {
            navigationItem.title = "\(objectType)"
        }
    }

    private func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UIObjectTableViewCell.self, forCellReuseIdentifier: "UIObjectTableViewCell")

        self.view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
    }

    @objc private func close() {
        if self.isModal() {
            self.dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
}

// MARK: - Table view data source
extension UIObjectViewController: UITableViewDelegate, UITableViewDataSource {

    open func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uiObject.propertiesDict().count
    }

    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UIObjectTableViewCell", for: indexPath) as? UIObjectTableViewCell
            else {
                return UITableViewCell()
        }

        cell.propertyNameLabel.text = uiObject.propertyNames()[indexPath.row]
        cell.propertyValueLabel.text = uiObject.propertyValues()[indexPath.row]
        return cell
    }
}
