import Foundation

internal struct APTA220: WheelProfile {
    public var description: String {
        "APTA 220"
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
        + Sampler.arc(from: H, to: I, center: centerHI, radius: rHI, resolution: resolution)
        + Sampler.arc(from: I, to: J, center: centerIJ, radius: rIJ, resolution: resolution)
        + Sampler.straightLine(from: J, to: K, resolution: resolution)
        + Sampler.arc(from: K, to: L, center: centerKL, radius: rKL, negativeDirection: true, resolution: resolution)
    }
}



extension APTA220 {
    fileprivate var A: CGPoint {
        CGPoint(x: -1.1563, y: -0.6250).inchToMm
    }

    fileprivate var B: CGPoint {
        CGPoint(x: -1.1563, y: -0.4434).inchToMm
    }

    fileprivate var C: CGPoint {
        CGPoint(x: -0.8501, y: 0.2407).inchToMm
    }

    fileprivate var D: CGPoint {
        CGPoint(x: -0.5625, y: 0.3750).inchToMm
    }

    fileprivate var E: CGPoint {
        CGPoint(x: -0.1403, y: 0.2301).inchToMm
    }

    fileprivate var F: CGPoint {
        CGPoint(x: -0.0084, y: 0.0312).inchToMm
    }

    fileprivate var G: CGPoint {
        CGPoint(x: 0.0286, y: -0.1069).inchToMm
    }

    fileprivate var H: CGPoint {
        CGPoint(x: 0.2840, y: -0.4445).inchToMm
    }

    fileprivate var I: CGPoint {
        CGPoint(x: 0.7485, y: -0.6250).inchToMm
    }

    fileprivate var J: CGPoint {
        CGPoint(x: 0.9771, y: -0.6542).inchToMm
    }

    fileprivate var K: CGPoint {
        CGPoint(x: 3.7499, y: -0.7927).inchToMm
    }

    fileprivate var L: CGPoint {
        CGPoint(x: 4.3437, y: -1.4169).inchToMm
    }
}



extension APTA220 {
    fileprivate var rBC: Double {
        1.375.inchToMm
    }

    fileprivate var rCD: Double {
        0.375.inchToMm
    }

    fileprivate var rDE: Double {
        0.6875.inchToMm
    }

    fileprivate var rEF: Double {
        0.375.inchToMm
    }

    fileprivate var rGH: Double {
        0.5625.inchToMm
    }

    fileprivate var rHI: Double {
        1.5.inchToMm
    }

    fileprivate var rIJ: Double {
        1.5.inchToMm
    }

    fileprivate var rKL: Double {
        0.625.inchToMm
    }
}



extension APTA220 {
    fileprivate var centerBC: CGPoint {
        CGPoint(x: 0.2044, y: -0.6418).inchToMm
    }

    fileprivate var centerCD: CGPoint {
        CGPoint(x: -0.5625, y: 0.0).inchToMm
    }

    fileprivate var centerDE: CGPoint {
        CGPoint(x: -0.5625, y: -0.3125).inchToMm
    }

    fileprivate var centerEF: CGPoint {
        CGPoint(x: -0.3706, y: -0.0659).inchToMm
    }

    fileprivate var centerGH: CGPoint {
        CGPoint(x: 0.5720, y: 0.0387).inchToMm
    }

    fileprivate var centerHI: CGPoint {
        CGPoint(x: 1.0520, y: 0.8440).inchToMm
    }

    fileprivate var centerIJ: CGPoint {
        CGPoint(x: 1.0520, y: 0.8440).inchToMm
    }

    fileprivate var centerKL: CGPoint {
        CGPoint(x: 3.7187, y: -1.4169).inchToMm
    }
}
