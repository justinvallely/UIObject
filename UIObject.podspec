Pod::Spec.new do |s|

  s.name          = "UIObject"
  s.version       = "0.3.0"
  s.summary       = "An easy way to display all the properties and values of any Object."
  s.swift_version = "4.1"

  s.description   = <<-DESC
Quickly render a table view of all the properties in any struct or class within your app. Add and remove properties as needed
and the view automatically adjusts. This is a great way to visualize model data that's been parsed from a JSON object. Powerful
enough to use for debugging, yet beautiful enough to present to your users.
                    DESC

  s.homepage      = "https://github.com/justinvallely"
# s.screenshots   = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license       = { :type => "Apache License, Version 2.0", :file => "LICENSE" }

  s.author        = { "Justin Vallely" => "justinvallely@gmail.com" }

  s.platform      = :ios, "9.0"

  s.source        = { :git => "https://github.com/justinvallely/UIObject.git", :tag => "#{s.version}" }

  s.source_files  = "UIObject/Classes", "UIObject/Classes/**/*"
  s.frameworks    = "UIKit", "Foundation"

end
