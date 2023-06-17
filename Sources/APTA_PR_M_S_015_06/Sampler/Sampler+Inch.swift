import Foundation


extension CGPoint {
    internal var inchToMm: CGPoint {
        CGPoint(x: x * 25.4, y: y * 25.4)
    }
}



extension Double {
    internal var inchToMm: Double {
        self * 25.4
    }
}
