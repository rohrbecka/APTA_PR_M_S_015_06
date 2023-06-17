import Foundation

internal struct NRCC6Amtrak: WheelProfile {
    public var description: String {
        "NRCC-6 (Amtrak conventional equipment)"
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
        + Sampler.arc(from: J, to: K, center: centerJK, radius: rJK, resolution: resolution)
        + Sampler.arc(from: K, to: L, center: centerKL, radius: rKL, resolution: resolution)
        + Sampler.arc(from: L, to: M, center: centerLM, radius: rLM, resolution: resolution)
        + Sampler.arc(from: M, to: N, center: centerMN, radius: rMN, resolution: resolution)
        + Sampler.arc(from: N, to: O, center: centerNO, radius: rNO, resolution: resolution)
        + Sampler.arc(from: O, to: P, center: centerOP, radius: rOP, resolution: resolution)
        + Sampler.straightLine(from: P, to: Q, resolution: resolution)
        + Sampler.arc(from: Q, to: R, center: centerQR, radius: rQR, negativeDirection: true, resolution: resolution)
        + Sampler.straightLine(from: R, to: S, resolution: resolution)
    }
}



extension NRCC6Amtrak {
    fileprivate var A: CGPoint {
        CGPoint(x: 0.0000, y: 0.0000).inchToMm
    }

    fileprivate var B: CGPoint {
        CGPoint(x: 0.0308, y: 0.1148).inchToMm
    }

    fileprivate var C: CGPoint {
        CGPoint(x: 0.0527, y: 0.1850).inchToMm
    }

    fileprivate var D: CGPoint {
        CGPoint(x: 0.1169, y: 0.3492).inchToMm
    }

    fileprivate var E: CGPoint {
        CGPoint(x: 0.6390, y: 0.7261).inchToMm
    }

    fileprivate var F: CGPoint {
        CGPoint(x: 1.1220, y: 0.3555).inchToMm
    }

    fileprivate var G: CGPoint {
        CGPoint(x: 1.1632, y: 0.2016).inchToMm
    }

    fileprivate var H: CGPoint {
        CGPoint(x: 1.1845, y: 0.1388).inchToMm
    }

    fileprivate var I: CGPoint {
        CGPoint(x: 1.1988, y: 0.1080).inchToMm
    }

    fileprivate var J: CGPoint {
        CGPoint(x: 1.2515, y: 0.0322).inchToMm
    }

    fileprivate var K: CGPoint {
        CGPoint(x: 1.3823, y: -0.0802).inchToMm
    }

    fileprivate var L: CGPoint {
        CGPoint(x: 1.5711, y: -0.1773).inchToMm
    }

    fileprivate var M: CGPoint {
        CGPoint(x: 1.7939, y: -0.2435).inchToMm
    }

    fileprivate var N: CGPoint {
        CGPoint(x: 1.9746, y: -0.2757).inchToMm
    }

    fileprivate var O: CGPoint {
        CGPoint(x: 2.3909, y: -0.3182).inchToMm
    }

    fileprivate var P: CGPoint {
        CGPoint(x: 2.7574, y: -0.3350).inchToMm
    }

    fileprivate var Q: CGPoint {
        CGPoint(x: 4.8803, y: -0.3881).inchToMm
    }

    fileprivate var R: CGPoint {
        CGPoint(x: 5.3066, y: -0.5709).inchToMm
    }

    fileprivate var S: CGPoint {
        CGPoint(x: 5.7000, y: -0.9643).inchToMm
    }
}



extension NRCC6Amtrak {
    fileprivate var rBC: Double {
        0.9063.inchToMm
    }

    fileprivate var rCD: Double {
        2.9647.inchToMm
    }

    fileprivate var rDE: Double {
        0.625.inchToMm
    }

    fileprivate var rEF: Double {
        0.5.inchToMm
    }

    fileprivate var rGH: Double {
        0.5118.inchToMm
    }

    fileprivate var rHI: Double {
        0.3937.inchToMm
    }

    fileprivate var rIJ: Double {
        0.3543.inchToMm
    }

    fileprivate var rJK: Double {
        0.7087.inchToMm
    }

    fileprivate var rKL: Double {
        0.9449.inchToMm
    }

    fileprivate var rLM: Double {
        1.5748.inchToMm
    }

    fileprivate var rMN: Double {
        2.3622.inchToMm
    }

    fileprivate var rNO: Double {
        5.9055.inchToMm
    }

    fileprivate var rOP: Double {
        8.8583.inchToMm
    }

    fileprivate var rQR: Double {
        0.6250.inchToMm
    }
}



extension NRCC6Amtrak {
    fileprivate var centerBC: CGPoint {
        CGPoint(x: 0.9062, y: -0.1197).inchToMm
    }

    fileprivate var centerCD: CGPoint {
        CGPoint(x: 2.8447, y: -0.8118).inchToMm
    }

    fileprivate var centerDE: CGPoint {
        CGPoint(x: 0.6915, y: 0.1033).inchToMm
    }

    fileprivate var centerEF: CGPoint {
        CGPoint(x: 0.6390, y: 0.2261).inchToMm
    }

    fileprivate var centerGH: CGPoint {
        CGPoint(x: 1.6576, y: 0.3341).inchToMm
    }

    fileprivate var centerHI: CGPoint {
        CGPoint(x: 1.5484, y: 0.2890).inchToMm
    }

    fileprivate var centerIJ: CGPoint {
        CGPoint(x: 1.5134, y: 0.2709).inchToMm
    }

    fileprivate var centerJK: CGPoint {
        CGPoint(x: 1.7754, y: 0.5095).inchToMm
    }

    fileprivate var centerKL: CGPoint {
        CGPoint(x: 1.9064, y: 0.7061).inchToMm
    }

    fileprivate var centerLM: CGPoint {
        CGPoint(x: 2.1299, y: 1.2950).inchToMm
    }

    fileprivate var centerMN: CGPoint {
        CGPoint(x: 2.2979, y: 2.0643).inchToMm
    }

    fileprivate var centerNO: CGPoint {
        CGPoint(x: 2.7828, y: 5.5743).inchToMm
    }

    fileprivate var centerOP: CGPoint {
        CGPoint(x: 2.9788, y: 8.5205).inchToMm
    }

    fileprivate var centerQR: CGPoint {
        CGPoint(x: 4.8647, y: -1.0129).inchToMm
    }
}
