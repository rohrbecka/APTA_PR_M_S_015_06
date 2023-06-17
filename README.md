# APTA_PR_M_S_015_06

A Swift Package implementing the wheel profiles as defined in 
[APTA PR-M-S-015-06, Rev. 1](https://www.apta.com/wp-content/uploads/APTA-PR-M-S-015-06_R1.pdf)
dating Februrary 4, 2022.

## About the standard

APTA_PR_M_S_015_06 is elaborated by the American Public Transportation Association defines primarily the
required flange angle to prevent low-speed derailments, but defines also in appendix C wheel profiles
which are fulfilling these requirements to the flange.

** This Swift Package focuses on the geometry of these profiles only.**

## Usage
To use the package just include it as a package into your project. Check the repository to find the most
recent release.

The project follows the semantic versioning rules as outlined in semver.org. Therefore, it should be safe
to use the "Up to the next major version"-rule.

## API
Profiles can be generated just by initialising them as all profiles don't have any parameters:

```swift
// Create the profile
let myProfile = APTA.profile(.apta220)
// Sample the profile into points:
let points = myProfile.profile(resolution: 0.5) 
``` 

The available ```WheelProfileType`s can be found in the respective documentation. This `enum` contains the
profiles as defined in APTA PR-M-S-015-06, Rev. 1. 


## Co-ordinate system and units

APTA PR-M-S-015-06, Rev. 1. defines some of the profiles in inches, and some of the profiles in Millimeters.
For the sake of compatibility the public API of this Package is entirely working in Millimeters.

Also for the co-ordinate system there is no standard way in which the co-ordinate system is defined. For
some profiles the origin is in the so-called "Gauge-Point", located at approximately 0.375 inches from the
tip of the reprofiled flange. Other profiles are defined according to another point on the profile.

The co-ordinate systems used in this package are those, used in the standard. Therefore, a client application
must not rely on a specific position of the profiles in the x-y-space. The only thing, which can be guaranteed
is that, the x-Axis is the lateral direction, whereas the y-axis is the vertical direction. The x-axis points
towards the outer side of the wheel (away from the flange), the y-axis points towards the flange.

It is thus recommended for applications to adjust the position of profiles based on criteria defined
within these applications and the shape of the profile.

