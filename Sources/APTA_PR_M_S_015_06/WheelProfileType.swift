/// The types of wheel profiles as defined in APTA PR-M-S-015-06, Rev. 1.
///
/// For further details please refer to
/// [APTA PR-M-S-015-06, Rev. 1](https://www.apta.com/wp-content/uploads/APTA-PR-M-S-015-06_R1.pdf).
public enum WheelProfileType: CaseIterable {

    /// The APTA 120 profile, which in nominal condition doesn't meet the requirements of the
    /// APTA PR-M-S-015-06 Rev. 1 standard regarding the flange geometry. tTherefore this
    /// profile is marked as legacy profile.
    ///
    /// For further details please refer to
    /// [APTA PR-M-S-015-06, Rev. 1](https://www.apta.com/wp-content/uploads/APTA-PR-M-S-015-06_R1.pdf).
    case apta120

    /// The APTA 140 profile, which in nominal condition doesn't meet the requirements of the
    /// APTA PR-M-S-015-06 Rev. 1 standard regarding the flange geometry. tTherefore this
    /// profile is marked as legacy profile.
    ///
    /// For further details please refer to
    /// [APTA PR-M-S-015-06, Rev. 1](https://www.apta.com/wp-content/uploads/APTA-PR-M-S-015-06_R1.pdf).
    case apta140

    /// The APTA 140 profile, which is a modified APTA 140 profile, which meets the requirements of the
    /// APTA PR-M-S-015-06 Rev. 1 standard regarding the flange geometry.
    ///
    /// For further details please refer to
    /// [APTA PR-M-S-015-06, Rev. 1](https://www.apta.com/wp-content/uploads/APTA-PR-M-S-015-06_R1.pdf).
    case apta140M

    /// The APTA 220 profile, which is a modified freight profile, which is the standard for lower speed
    /// passenger traffic.
    ///
    /// For further details please refer to
    /// [APTA PR-M-S-015-06, Rev. 1](https://www.apta.com/wp-content/uploads/APTA-PR-M-S-015-06_R1.pdf).
    case apta220

    /// The APTA 240 profile, which is a modified APTA 220 profile, which reduces conicity compared to the APTA 220.
    /// Therefore, the APTA 240 is typically used in high speed traffic.
    ///
    /// For further details please refer to
    /// [APTA PR-M-S-015-06, Rev. 1](https://www.apta.com/wp-content/uploads/APTA-PR-M-S-015-06_R1.pdf).
    case apta240

    /// The APTA 320 is a modified version of the APTA 340 profile with a steeper tread to improve curving behaviour.
    ///
    /// For further details please refer to
    /// [APTA PR-M-S-015-06, Rev. 1](https://www.apta.com/wp-content/uploads/APTA-PR-M-S-015-06_R1.pdf).
    case apta320

    /// The APTA 340 profile is a profile based on worn wheel proflies on the Northeast Corridor on Amtrak
    /// commuter railcars.
    ///
    /// For further details please refer to
    /// [APTA PR-M-S-015-06, Rev. 1](https://www.apta.com/wp-content/uploads/APTA-PR-M-S-015-06_R1.pdf).
    case apta340

    /// A profile designed for the Acela trainsets following high flange wear issues on these trains. In the end it
    /// turned out to be very similar to the APTA 340 profile.
    ///
    /// For further details please refer to
    /// [APTA PR-M-S-015-06, Rev. 1](https://www.apta.com/wp-content/uploads/APTA-PR-M-S-015-06_R1.pdf).
    case nrcc6Acela

    /// A profile designed for the Acela trainsets following high flange wear issues on these trains. In the end
    /// it turned out to bevery similar to the APTA 340 profile. This version of the profile is used on conventional
    /// Amtrak vehicles due to a different wheel width compared to the Acela trainsets.
    ///
    /// For further details please refer to
    /// [APTA PR-M-S-015-06, Rev. 1](https://www.apta.com/wp-content/uploads/APTA-PR-M-S-015-06_R1.pdf).
    case nrcc6Amtrak



    /// The ``WheelProfile``represented by this ``WheelProfileType``.
    var profile: WheelProfile {
        switch self {
        case .apta120: return APTA120()
        case .apta140: return APTA140()
        case .apta140M: return APTA140M()
        case .apta220: return APTA220()
        case .apta240: return APTA240()
        case .apta320: return APTA320()
        case .apta340: return APTA340()
        case .nrcc6Acela: return NRCC6Acela()
        case .nrcc6Amtrak: return NRCC6Amtrak()
        }
    }
}


extension WheelProfileType: CustomStringConvertible {
    public var description: String {
        profile.description
    }
}
