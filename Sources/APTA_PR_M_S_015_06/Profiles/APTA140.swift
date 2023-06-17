import Foundation

internal struct APTA140: WheelProfile {
    public var description: String {
        "APTA 140"
    }

    public func profile() -> [CGPoint] {
        profile(resolution: 0.5)
    }

    public func profile(resolution: Double) -> [CGPoint] {
        Sampler.straightLine(from: A, to: B, resolution: resolution)
        + Sampler.arc(from: B, to: C, center: centerBC, radius: rBC, negativeDirection: true, resolution: resolution)
        + Sampler.arc(from: C, to: D, center: centerCD, radius: rCD, negativeDirection: true, resolution: resolution)
        + Sampler.arc(from: D, to: E, center: centerDE, radius: rDE, negativeDirection: true, resolution: resolution)
        + Sampler.arc(from: E, to: F, center: centerEF, radius: rEF, negativeDirection: true, resolution: resolution)
        + Sampler.straightLine(from: F, to: G, resolution: resolution)
        + Sampler.arc(from: G, to: H, center: centerGH, radius: rGH, resolution: resolution)
        + Sampler.straightLine(from: H, to: I, resolution: resolution)
        + Sampler.arc(from: I, to: J, center: centerIJ, radius: rIJ, negativeDirection: true, resolution: resolution)
    }
}



extension APTA140 {
    fileprivate var A: CGPoint {
        CGPoint(x: -1.1563, y: -0.6250).inchToMm
    }

    fileprivate var B: CGPoint {
        CGPoint(x: -1.1562, y: -0.4583).inchToMm
    }

    fileprivate var C: CGPoint {
        CGPoint(x: -1.1013, y: -0.1476).inchToMm
    }

    fileprivate var D: CGPoint {
        CGPoint(x: -1.0438, y: -0.0019).inchToMm
    }

    fileprivate var E: CGPoint {
        CGPoint(x: -0.5313, y: 0.3750).inchToMm
    }

    fileprivate var F: CGPoint {
        CGPoint(x: -0.0270, y: 0.0465).inchToMm
    }

    fileprivate var G: CGPoint {
        CGPoint(x: 0.0751, y: -0.1790).inchToMm
    }

    fileprivate var H: CGPoint {
        CGPoint(x: 0.7188, y: -0.6250).inchToMm
    }

    fileprivate var I: CGPoint {
        CGPoint(x: 3.7344, y: -0.7004).inchToMm
    }

    fileprivate var J: CGPoint {
        CGPoint(x: 4.3438, y: -1.3252).inchToMm
    }
}



extension APTA140 {
    fileprivate var rBC: Double {
        0.9063.inchToMm
    }

    fileprivate var rCD: Double {
        2.9688.inchToMm
    }

    fileprivate var rDE: Double {
        0.625.inchToMm
    }

    fileprivate var rEF: Double {
        0.625.inchToMm
    }

    fileprivate var rFG: Double {
        1.875.inchToMm
    }

    fileprivate var rGH: Double {
        0.6875.inchToMm
    }

    fileprivate var rIJ: Double {
        0.625.inchToMm
    }
}



extension APTA140 {
    fileprivate var centerBC: CGPoint {
        CGPoint(x: -0.25, y: -0.4583).inchToMm
    }

    fileprivate var centerCD: CGPoint {
        CGPoint(x: 1.6875, y: -1.1654).inchToMm
    }

    fileprivate var centerDE: CGPoint {
        CGPoint(x: -0.4688, y: -0.2469).inchToMm
    }

    fileprivate var centerEF: CGPoint {
        CGPoint(x: -0.5781, y: -0.2482).inchToMm
    }

    fileprivate var centerFG: CGPoint {
        CGPoint(x: -1.6805, y: -0.8376).inchToMm
    }

    fileprivate var centerGH: CGPoint {
        CGPoint(x: 0.7188, y: 0.0625).inchToMm
    }

    fileprivate var centerIJ: CGPoint {
        CGPoint(x: 3.7188, y: -1.3252).inchToMm
    }
}
