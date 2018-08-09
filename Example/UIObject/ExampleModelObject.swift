//
//  ExampleModelObject.swift
//  UIObject
//
//  Created by Justin Vallely on 8/9/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIObject

class Person: UIObject {
    var name: String = "William S. Preston Esq."
    var awesome: Bool = true
    var favoriteFoods: [String] = ["Pizza", "Ice Cream"]
    var children: [String]? = nil
    let age: Int? = 35
}
