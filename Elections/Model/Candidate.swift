import Foundation

struct Candidate {
    let orderNumber: String
    let name: String
    let surname: String
    let degreePrefix: String
    let degreeSuffix: String
    let votes: String
    let votesPercentage: String
}

extension Candidate: Identifiable {
    var id: String {
        orderNumber
    }
}

extension Candidate {
    init(xmlNode: XMLNode) {
        orderNumber = xmlNode.getAtribute(CandidateKey.orderNumber.value) ?? ""
        name = xmlNode.getAtribute(CandidateKey.name.value) ?? ""
        surname = xmlNode.getAtribute(CandidateKey.surname.value) ?? ""
        degreePrefix = xmlNode.getAtribute(CandidateKey.degreePrefix.value) ?? ""
        degreeSuffix = xmlNode.getAtribute(CandidateKey.degreeSuffix.value) ?? ""
        votes = xmlNode.getAtribute(CandidateKey.votes.value) ?? ""
        votesPercentage = xmlNode.getAtribute(CandidateKey.votesPercentage.value) ?? ""
    }
}

extension Candidate: CustomDebugStringConvertible {
    var debugDescription: String {
        "\(orderNumber): \(degreePrefix.isEmpty ? "" : degreePrefix)\(name) \(surname) \(degreeSuffix) votes: \(votes) votes % \(votesPercentage)"
    }
}
