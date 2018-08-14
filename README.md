# UIObject

[![Version](https://img.shields.io/cocoapods/v/UIObject.svg?style=flat)](http://cocoapods.org/pods/UIObject)
[![License](https://img.shields.io/cocoapods/l/UIObject.svg?style=flat)](http://cocoapods.org/pods/UIObject)
[![Platform](https://img.shields.io/badge/platform-iOS-blue.svg?style=flat)](http://cocoapods.org/pods/UIObject)
[![CocoaPods](https://img.shields.io/cocoapods/dt/UIObject.svg?style=flat)](https://cocoapods.org/pods/UIObject)
![tests](https://img.shields.io/badge/tests-passing-brightgreen.svg)
![Swift](https://img.shields.io/badge/Swift-4.0-orange.svg)
![Dependencies](https://img.shields.io/badge/dependencies-none-lightgrey.svg?style=flat)


## Overview

Quickly render a table view of all the properties in any struct or class within your app. Add and remove properties as needed and the view
automatically adjusts. This is a great way to visualize model data that's been parsed from a JSON object. Powerful enough to use for 
debugging, yet beautiful enough to present to your users.

- Each table element shows a property name and its current value
- Handles optional values
- Closure values are displayed as "(Function)"
- All methods are scoped as `open` - override the view to match your app
- Optional: Declare an object as both `Codable` and `UIObject` and you have a very quick and swifty parse->display hierarchy


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Requirements

- iOS 9.0+
- Swift 4.0+


## Communication

- If you **need help**, use [Stack Overflow](https://stackoverflow.com/questions/tagged/uiobject). (Tag 'uiobject')
- If you'd like to **ask a general question**, use [Stack Overflow](https://stackoverflow.com/questions/tagged/uiobject).
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.


## Installation

UIObject is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UIObject'
```


## Implementation

* **Import the framework in your view controller**
```swift
import UIObject
```

* **Create an instance of an object conforming to the UIObject protocol**
```swift
let person = Person()
```

* **Instantiate an UIObjectViewController with the object you'd like to display**
```swift
let personViewController = UIObjectViewController(uiObject: person)
```

* **Push or Present the view controller**
```swift
/* PUSH the view onto the nav stack */
self.navigationController?.pushViewController(personViewController, animated: true)

/* PRESENT the view modally */
let modalViewWithNavigationBar: UINavigationController = UINavigationController(rootViewController: personViewController)
self.present(modalViewWithNavigationBar, animated: true)
```


## Full Example

```swift
import UIObject

class Person: UIObject {
    let name: String = "William S. Preston Esq."
    var age: Int = 35
    var awesome: Bool = true
    var favoriteFoods: [String] = ["Pizza", "Ice Cream"]
    var children: [String]? = nil
    var car: String? = "Jeep"
}

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let person = Person()

        let personViewController = UIObjectViewController(uiObject: person)

        /* PUSH the view onto the nav stack */
        self.navigationController?.pushViewController(personViewController, animated: true)

        /* PRESENT the view modally */
//        let modalViewWithNavigationBar: UINavigationController = UINavigationController(rootViewController: personViewController)
//        self.present(modalViewWithNavigationBar, animated: true)
    }
}
```

## Author

Justin Vallely, justinvallely@gmail.com

## License

UIObject is available under the Apache License 2.0. See the LICENSE file for more info.
