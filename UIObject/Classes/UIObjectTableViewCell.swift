//
//  UIObjectTableViewCell.swift
//  UIObject
//
//  Created by Justin Vallely on 8/7/18.
//  Copyright © 2018 JustinVallely. All rights reserved.
//

import UIKit

class UIObjectTableViewCell: UITableViewCell {

    @IBOutlet weak var propertyNameLabel: UILabel!
    @IBOutlet weak var propertyValueLabel: UILabel!
    @IBOutlet weak var clippingView: UIView!
    @IBOutlet weak var shadowView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()

        clippingView.layer.cornerRadius = 5
        clippingView.layer.borderColor = UIColor.darkGray.cgColor
        clippingView.layer.borderWidth = 1

        shadowView.layer.cornerRadius = 5
        shadowView.layer.shadowColor = UIColor.darkGray.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 3)
        shadowView.layer.shadowOpacity = 0.6
    }
}
