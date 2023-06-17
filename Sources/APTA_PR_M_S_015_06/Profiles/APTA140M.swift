import Foundation

internal struct APTA140M: WheelProfile {
    public var description: String {
        "APTA 140M"
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



extension APTA140M {
    fileprivate var A: CGPoint {
        CGPoint(x: -1.1875, y: -0.6250).inchToMm
    }

    fileprivate var B: CGPoint {
        CGPoint(x: -1.1875, y: -0.4114).inchToMm
    }

    fileprivate var C: CGPoint {
        CGPoint(x: -1.1326, y: -0.1007).inchToMm
    }

    fileprivate var D: CGPoint {
        CGPoint(x: -1.0750, y: 0.0450).inchToMm
    }

    fileprivate var E: CGPoint {
        CGPoint(x: -0.5625, y: 0.4219).inchToMm
    }

    fileprivate var F: CGPoint {
        CGPoint(x: 0.0054, y: -0.0141).inchToMm
    }

    fileprivate var G: CGPoint {
        CGPoint(x: 0.0307, y: -0.1014).inchToMm
    }

    fileprivate var H: CGPoint {
        CGPoint(x: 0.6929, y: -0.6250).inchToMm
    }

    fileprivate var I: CGPoint {
        CGPoint(x: 3.7031, y: -0.7003).inchToMm
    }

    fileprivate var J: CGPoint {
        CGPoint(x: 4.3125, y: -1.3251).inchToMm
    }
}



extension APTA140M {
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
        0.703.inchToMm
    }

    fileprivate var rIJ: Double {
        0.625.inchToMm
    }
}



extension APTA140M {
    fileprivate var centerBC: CGPoint {
        CGPoint(x: -0.2813, y: -0.4114).inchToMm
    }

    fileprivate var centerCD: CGPoint {
        CGPoint(x: 1.6563, y: -1.1186).inchToMm
    }

    fileprivate var centerDE: CGPoint {
        CGPoint(x: -0.5000, y: -0.2000).inchToMm
    }

    fileprivate var centerEF: CGPoint {
        CGPoint(x: -0.5905, y: -0.2025).inchToMm
    }

    fileprivate var centerFG: CGPoint {
        CGPoint(x: -1.7824, y: -0.5793).inchToMm
    }

    fileprivate var centerGH: CGPoint {
        CGPoint(x: 0.7105, y: 0.0778).inchToMm
    }

    fileprivate var centerIJ: CGPoint {
        CGPoint(x: 3.6875, y: -1.3251).inchToMm
    }
}
