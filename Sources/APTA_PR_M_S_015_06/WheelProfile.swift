import Foundation

public protocol WheelProfile {

    /// The profile name according APTA PR-M-S-015-06.
    var description: String { get }

    /// Returns the profile as array of x-y-values with an optimal resolution.
    ///
    /// - Returns: An array of `CGPoint`s representing the profiles.
    func profile() -> [CGPoint]

    /// Returns the profile as array of x-y-values.
    ///
    /// The distance between neighbouring points returned is guaranteed to be smaller than `resolution`.
    ///
    /// - Parameter resolution: The maximum allowed distance between two neighboring points.
    /// - Returns: An array of `CGPoint`s representing the profiles.
    func profile(resolution: Double) -> [CGPoint]
}
