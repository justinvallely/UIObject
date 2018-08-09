//
//  ExampleModelObject.swift
//  UIObject
//
//  Created by Justin Vallely on 8/9/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIObject

class Person: UIObject {
    let name: String = "William S. Preston Esq."
    var age: Int = 35
    var awesome: Bool = true
    var favoriteFoods: [String] = ["Pizza", "Ice Cream"]
    var children: [String]? = nil
    var car: String? = "Jeep"
}
