//
//  UIObject.swift
//  UIObject
//
//  Created by Justin Vallely on 8/7/18.
//  Copyright © 2018 JustinVallely. All rights reserved.
//

protocol UIObject {
    func propertyNames() -> [String]
    func propertyValues() -> [String]
    func propertiesDict() -> [String: String?]
}

extension UIObject {
    func propertyNames() -> [String] {
        return Mirror(reflecting: self).children.compactMap { $0.label }
    }

    func propertyValues() -> [String] {
        return Mirror(reflecting: self).children.compactMap { "\($0.value)" }
    }

    func propertiesDict() -> [String: String?] {
        var dict = [String: String?]()
        for (label, value) in Mirror(reflecting: self).children {
            guard let label = label else { continue }
            if let value = value as Any? {
                dict[label] = "\(value)"
            } else {
                dict[label] = nil
            }
        }
        return dict
    }
}
