import XCTest
@testable import Libyuv

final class Functional: XCTestCase {
    func testIdInit() {
        ARGBDetect(.none, 1, 1, 1)
    }

}
