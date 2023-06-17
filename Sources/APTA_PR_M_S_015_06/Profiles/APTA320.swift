import Foundation

internal struct APTA320: WheelProfile {
    public var description: String {
        "APTA 320"
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
        + Sampler.straightLine(from: K, to: L, resolution: resolution)
        + Sampler.arc(from: L, to: M, center: centerLM, radius: rLM, negativeDirection: true, resolution: resolution)
        + Sampler.straightLine(from: M, to: N, resolution: resolution)
    }
}



extension APTA320 {
    fileprivate var A: CGPoint {
        CGPoint(x: -29.2334, y: -15.8750)
    }

    fileprivate var B: CGPoint {
        CGPoint(x: -29.2334, y: -11.2780)
    }

    fileprivate var C: CGPoint {
        CGPoint(x: -21.3784, y: 6.2040)
    }

    fileprivate var D: CGPoint {
        CGPoint(x: -14.1504, y: 9.5250)
    }

    fileprivate var E: CGPoint {
        CGPoint(x: -3.4274, y: 5.8440)
    }

    fileprivate var F: CGPoint {
        CGPoint(x: -0.2894, y: 1.0800)
    }

    fileprivate var G: CGPoint {
        CGPoint(x: 1.0786, y: -4.0250)
    }

    fileprivate var H: CGPoint {
        CGPoint(x: 3.4066, y: -7.8752)
    }

    fileprivate var I: CGPoint {
        CGPoint(x: 10.4796, y: -12.6340)
    }

    fileprivate var J: CGPoint {
        CGPoint(x: 19.5616, y: -15.3010)
    }

    fileprivate var K: CGPoint {
        CGPoint(x: 36.5386, y: -17.0500)
    }

    fileprivate var L: CGPoint {
        CGPoint(x: 96.0526, y: -20.0600)
    }

    fileprivate var M: CGPoint {
        CGPoint(x: 106.4856, y: -24.6900)
    }

    fileprivate var N: CGPoint {
        CGPoint(x: 110.4666, y: -28.6710)
    }
}



extension APTA320 {
    fileprivate var rBC: Double {
        34.925
    }

    fileprivate var rCD: Double {
        9.525
    }

    fileprivate var rDE: Double {
        17.463
    }

    fileprivate var rEF: Double {
        9.525
    }

    fileprivate var rGH: Double {
        9
    }

    fileprivate var rHI: Double {
        22
    }

    fileprivate var rIJ: Double {
        45
    }

    fileprivate var rJK: Double {
        110
    }

    fileprivate var rLM: Double {
        15.875
    }
}



extension APTA320 {
    fileprivate var centerBC: CGPoint {
        CGPoint(x: 5.3284, y: -16.3016)
    }

    fileprivate var centerCD: CGPoint {
        CGPoint(x: -14.1510, y: 0.0)
    }

    fileprivate var centerDE: CGPoint {
        CGPoint(x: -14.1518, y: -7.9380)
    }

    fileprivate var centerEF: CGPoint {
        CGPoint(x: -9.4478, y: -1.5371)
    }

    fileprivate var centerGH: CGPoint {
        CGPoint(x: 9.6997, y: -1.4412)
    }

    fileprivate var centerHI: CGPoint {
        CGPoint(x: 18.9913, y: 7.6527)
    }

    fileprivate var centerIJ: CGPoint {
        CGPoint(x: 27.6295, y: 28.9699)
    }

    fileprivate var centerJK: CGPoint {
        CGPoint(x: 39.2888, y: 92.9156)
    }

    fileprivate var centerLM: CGPoint {
        CGPoint(x: 95.2602, y: -35.9152)
    }
}
