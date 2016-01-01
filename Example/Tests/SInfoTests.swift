import UIKit
import XCTest
import AspectsSwift

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()

    }
    
    override func tearDown() {

        super.tearDown()
    }
    
    func testExample() {
        
        let wrappedBlock:@convention(block) ()->Void={
            
            print("before call swift test")
        }
        let wrappedObject: AnyObject = unsafeBitCast(wrappedBlock, AnyObject.self)
        
        try!SInfo.aspect_hookSelector(Selector("test"), withOptions: .PositionBefore, usingBlock: wrappedObject)
        
        SInfo().test()
    }
    
}
