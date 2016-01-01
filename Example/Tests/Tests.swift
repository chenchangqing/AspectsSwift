import UIKit
import XCTest
import AspectsSwift

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAspects() {
        
        AspectsHelper.aspectTest { (x:Int32) -> Void in
            print("--------")
        }
        TInfo().start()
    }
    
}

public class AspectsObject: NSObject {
    
    public func login2()  {
        
        print("login......")
    }
    
    public class func login2()  {
        
        print("static login......")
    }
}
