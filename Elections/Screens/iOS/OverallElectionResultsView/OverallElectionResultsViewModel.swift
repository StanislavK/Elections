import SwiftUI

class OverallElectionResultsViewModel: ObservableObject {

    @Published var results: [Candidate] = []
    private let electionResultsService: ElectionResultsService

    init(
        electionResultsService: ElectionResultsService = ElectionResultsServiceImpl()
    ) {
        self.electionResultsService = electionResultsService
    }

    @MainActor
    func getOverallResults() async throws {
        let realAPIData = "https://www.volby.cz/pls/prez2023/vysledky"
        let responseData = try await electionResultsService.fetchOverallResults(urlString: realAPIData)
        let responseResults = parseResponseData(responseData)
        results = responseResults
    }

    private func parseResponseData(_ data: Data) -> [Candidate] {
        let dom = MicroDOM(data: Data(data))
        let tree = dom.parse()

        // get all KANDIDAT elements
        var candidates = [Candidate]()
        if let tags = tree?.getElementsByTagName(NodeName.kandidat.value) {
            for tag in tags {
                let candidate = Candidate(xmlNode: tag)
                candidates.append(candidate)
            }
        }
        return candidates
    }
}
