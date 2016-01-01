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
        
        let wrappedBlock:@convention(block) (info:AspectInfo)->Void={ info in
            
            print(info)
            print("before call swift test")
        }
        let wrappedObject: AnyObject = unsafeBitCast(wrappedBlock, AnyObject.self)
        
        try!SInfo.aspect_hookSelector(Selector("test"), withOptions: .PositionBefore, usingBlock: wrappedObject)
        
        SInfo().performSelector(Selector("test"))
    }
    
    func testExample2() {
        
        do {
            
            try SInfo.aspect_hookSelectorForSwift(Selector("test"), withOptions: .PositionBefore) { (info:AspectInfo!, any:AnyObject!) -> Void in
                
                print(info)
            }
        } catch {
            
            print(error)
        }
        SInfo().performSelector(Selector("test"))
    }
    
}
