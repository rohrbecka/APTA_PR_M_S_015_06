import Foundation

internal struct NRCC6Acela: WheelProfile {
    public var description: String {
        "NRCC-6 (Acela equipment)"
    }

    public func profile() -> [CGPoint] {
        profile(resolution: 0.5)
    }

    public func profile(resolution: Double) -> [CGPoint] {
        Sampler.arc(from: A, to: B, center: centerAB, radius: rAB, negativeDirection: true, resolution: resolution)
        + Sampler.arc(from: B, to: C, center: centerBC, radius: rBC, negativeDirection: true, resolution: resolution)
        + Sampler.arc(from: C, to: D, center: centerCD, radius: rCD, negativeDirection: true, resolution: resolution)
        + Sampler.arc(from: D, to: E, center: centerDE, radius: rDE, negativeDirection: true, resolution: resolution)
        + Sampler.straightLine(from: E, to: F, resolution: resolution)
        + Sampler.arc(from: F, to: G, center: centerFG, radius: rFG, resolution: resolution)
        + Sampler.arc(from: G, to: H, center: centerGH, radius: rGH, resolution: resolution)
        + Sampler.arc(from: H, to: I, center: centerHI, radius: rHI, resolution: resolution)
        + Sampler.arc(from: I, to: J, center: centerIJ, radius: rIJ, resolution: resolution)
        + Sampler.arc(from: J, to: K, center: centerJK, radius: rJK, resolution: resolution)
        + Sampler.arc(from: K, to: L, center: centerKL, radius: rKL, resolution: resolution)
        + Sampler.arc(from: L, to: M, center: centerLM, radius: rLM, resolution: resolution)
        + Sampler.arc(from: M, to: N, center: centerMN, radius: rMN, resolution: resolution)
        + Sampler.arc(from: N, to: O, center: centerNO, radius: rNO, resolution: resolution)
        + Sampler.straightLine(from: O, to: P, resolution: resolution)
        + Sampler.arc(from: P, to: Q, center: centerPQ, radius: rPQ, negativeDirection: true, resolution: resolution)
    }
}



extension NRCC6Acela {
    fileprivate var A: CGPoint {
        CGPoint(x: 0.0000, y: 0.0000)
    }

    fileprivate var B: CGPoint {
        CGPoint(x: 1.3444, y: 7.7516)
    }

    fileprivate var C: CGPoint {
        CGPoint(x: 2.9708, y: 11.9112)
    }

    fileprivate var D: CGPoint {
        CGPoint(x: 16.2334, y: 21.4836)
    }

    fileprivate var E: CGPoint {
        CGPoint(x: 28.5007, y: 12.0706)
    }

    fileprivate var F: CGPoint {
        CGPoint(x: 29.5482, y: 8.1614)
    }

    fileprivate var G: CGPoint {
        CGPoint(x: 30.0896, y: 6.5637)
    }

    fileprivate var H: CGPoint {
        CGPoint(x: 30.4495, y: 5.7881)
    }

    fileprivate var I: CGPoint {
        CGPoint(x: 31.7913, y: 3.8602)
    }

    fileprivate var J: CGPoint {
        CGPoint(x: 35.1141, y: 1.0049)
    }

    fileprivate var K: CGPoint {
        CGPoint(x: 39.9088, y: -1.4627)
    }

    fileprivate var L: CGPoint {
        CGPoint(x: 45.5659, y: -3.1440)
    }

    fileprivate var M: CGPoint {
        CGPoint(x: 50.1587, y: -3.9615)
    }

    fileprivate var N: CGPoint {
        CGPoint(x: 60.7292, y: -5.0419)
    }

    fileprivate var O: CGPoint {
        CGPoint(x: 70.0403, y: -5.4678)
    }

    fileprivate var P: CGPoint {
        CGPoint(x: 123.9621, y: -6.8158)
    }

    fileprivate var Q: CGPoint {
        CGPoint(x: 138.8994, y: -18.5771)
    }
}



extension NRCC6Acela {
    fileprivate var rAB: Double {
        23.0200
    }

    fileprivate var rBC: Double {
        75.3023
    }

    fileprivate var rCD: Double {
        15.8758
    }

    fileprivate var rDE: Double {
        12.7000
    }

    fileprivate var rFG: Double {
        13.0000
    }

    fileprivate var rGH: Double {
        10.0000
    }

    fileprivate var rHI: Double {
        9
    }

    fileprivate var rIJ: Double {
        18
    }

    fileprivate var rJK: Double {
        24
    }

    fileprivate var rKL: Double {
        40
    }

    fileprivate var rLM: Double {
        60
    }

    fileprivate var rMN: Double {
        150
    }

    fileprivate var rNO: Double {
        225
    }

    fileprivate var rPQ: Double {
        15.8750
    }
}



extension NRCC6Acela {
    fileprivate var centerAB: CGPoint {
        CGPoint(x: 23.0200, y: -0.0001)
    }

    fileprivate var centerBC: CGPoint {
        CGPoint(x: 72.2587, y: -17.5781)
    }

    fileprivate var centerCD: CGPoint {
        CGPoint(x: 17.5756, y: 5.6869)
    }

    fileprivate var centerDE: CGPoint {
        CGPoint(x: 16.2334, y: 8.7836)
    }

    fileprivate var centerFG: CGPoint {
        CGPoint(x: 42.1052, y: 11.5261)
    }

    fileprivate var centerGH: CGPoint {
        CGPoint(x: 39.3324, y: 10.3809)
    }

    fileprivate var centerHI: CGPoint {
        CGPoint(x: 38.4441, y: 9.9216)
    }

    fileprivate var centerIJ: CGPoint {
        CGPoint(x: 45.0969, y: 15.9830)
    }

    fileprivate var centerJK: CGPoint {
        CGPoint(x: 48.4245, y: 20.9757)
    }

    fileprivate var centerKL: CGPoint {
        CGPoint(x: 54.1016, y: 35.9347)
    }

    fileprivate var centerLM: CGPoint {
        CGPoint(x: 58.3694, y: 55.4740)
    }

    fileprivate var centerMN: CGPoint {
        CGPoint(x: 70.6854, y: 144.6274)
    }

    fileprivate var centerNO: CGPoint {
        CGPoint(x: 75.6635, y: 219.4620)
    }

    fileprivate var centerPQ: CGPoint {
        CGPoint(x: 123.8250, y: -22.6858)
    }
}
