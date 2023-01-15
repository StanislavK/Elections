import Foundation

protocol ElectionResultsService {
    func fetchOverallResults(urlString: String) async throws -> Data
}
