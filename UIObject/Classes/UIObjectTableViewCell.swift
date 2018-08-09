//
//  UIObjectTableViewCell.swift
//  UIObject
//
//  Created by Justin Vallely on 8/7/18.
//  Copyright © 2018 JustinVallely. All rights reserved.
//

import UIKit

open class UIObjectTableViewCell: UITableViewCell {

    open var propertyNameLabel = UILabel()
    open var propertyValueLabel = UILabel()
    open var clippingView = UIView()
    open var shadowView = UIView()
    open var labelsStackView = UIStackView()

    override public init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        configureViews()
        setupViewConstraints()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        assertionFailure("not implemented")
    }

    private func configureViews() {
        shadowView.layer.cornerRadius = 5
        shadowView.layer.shadowColor = UIColor.darkGray.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 3)
        shadowView.layer.shadowOpacity = 0.6
        shadowView.backgroundColor = .darkGray

        clippingView.layer.cornerRadius = 5
        clippingView.layer.borderColor = UIColor.darkGray.cgColor
        clippingView.layer.borderWidth = 1
        clippingView.clipsToBounds = true
        clippingView.backgroundColor = .white

        propertyNameLabel.textColor = .darkGray
        propertyNameLabel.text = "Property Name"
        propertyNameLabel.font.withSize(24)

        propertyValueLabel.textColor = .black
        propertyValueLabel.text = "Property Value"
        propertyValueLabel.font.withSize(16)
        propertyValueLabel.numberOfLines = 0
        propertyValueLabel.lineBreakMode = .byWordWrapping

        labelsStackView.axis = .vertical
        labelsStackView.alignment = .fill
        labelsStackView.distribution = .fillProportionally
        labelsStackView.spacing = 10
        labelsStackView.clipsToBounds = true
        labelsStackView.addArrangedSubview(propertyNameLabel)
        labelsStackView.addArrangedSubview(propertyValueLabel)
    }

    private func setupViewConstraints() {
        self.contentView.addSubview(shadowView)
        self.contentView.addSubview(clippingView)
        clippingView.addSubview(labelsStackView)

        clippingView.translatesAutoresizingMaskIntoConstraints = false
        clippingView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8).isActive = true
        clippingView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
        clippingView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        clippingView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true

        labelsStackView.translatesAutoresizingMaskIntoConstraints = false
        labelsStackView.leadingAnchor.constraint(equalTo: clippingView.leadingAnchor, constant: 8).isActive = true
        labelsStackView.trailingAnchor.constraint(equalTo: clippingView.trailingAnchor, constant: -8).isActive = true
        labelsStackView.topAnchor.constraint(equalTo: clippingView.topAnchor, constant: 8).isActive = true
        labelsStackView.bottomAnchor.constraint(equalTo: clippingView.bottomAnchor, constant: -8).isActive = true

        shadowView.translatesAutoresizingMaskIntoConstraints = false
        shadowView.leadingAnchor.constraint(equalTo: clippingView.leadingAnchor).isActive = true
        shadowView.trailingAnchor.constraint(equalTo: clippingView.trailingAnchor).isActive = true
        shadowView.topAnchor.constraint(equalTo: clippingView.topAnchor).isActive = true
        shadowView.bottomAnchor.constraint(equalTo: clippingView.bottomAnchor).isActive = true
    }
}
