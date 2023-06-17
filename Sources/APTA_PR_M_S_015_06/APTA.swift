/// The main entry point for the ``APTA_PR_M_S_015_06`` package.
///
///
public enum APTA {
// implemented as caseless enum to prevent initialisation

    /// Creates the profile of a given type.
    ///
    /// - Parameter type: The profile type to be created.
    /// - Returns The ``WheelProfile``.
    public static func profile(_ type: WheelProfileType) -> WheelProfile {
        return type.profile
    }
}
