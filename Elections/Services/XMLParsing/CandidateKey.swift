import Foundation

enum CandidateKey: String {
    case orderNumber = "PORADOVE_CISLO"
    case name = "JMENO"
    case surname = "PRIJMENI"
    case degreePrefix = "TITULPRED"
    case degreeSuffix = "TITULZA"
    case votes = "HLASY_1KOLO"
    case votesPercentage = "HLASY_PROC_1KOLO"

    var value: String {
        rawValue
    }
}
