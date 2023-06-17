import XCTest
@testable import APTA_PR_M_S_015_06

final class APTATests: XCTestCase {
    func testAPTA220() {
        let points = NRCC6Amtrak().profile()
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 3
        formatter.maximumFractionDigits = 3
        for point in points {
            print("\(formatter.string(from: point.x))\t\(formatter.string(from: point.y))")
        }
    }
}



extension NumberFormatter {
    fileprivate func string(from double: Double) -> String {
        string(from: NSNumber(value: double)) ?? ""
    }
}
