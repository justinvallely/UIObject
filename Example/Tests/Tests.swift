import XCTest
import UIObject

class Tests: XCTestCase {

    var testObject: UIObject = Person()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPropertyCounts() {
        let namesCount = testObject.propertyNames().count
        let valuesCount = testObject.propertyValues().count
        let dictCount = testObject.propertiesDict().count

        XCTAssert(namesCount == valuesCount)
        XCTAssert(namesCount == dictCount)
        XCTAssert(valuesCount == dictCount)
    }

    func testPropertyValuePairing() {
        let names = testObject.propertyNames()
        let values = testObject.propertyValues()
        let dict = testObject.propertiesDict()

        for (key, value) in dict {
            guard let propertyNameIndex = names.index(of: key) else {
                XCTFail("Could not find index of key: \(key)")
                return
            }

            if let value = value {
                XCTAssert(values[propertyNameIndex] == value)
            } else {
                XCTAssertNil(values[propertyNameIndex])
            }

        }
    }
    
}
