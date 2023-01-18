import SwiftUI

struct OverallElectionResultsView: View {
    @StateObject var viewModel = OverallElectionResultsViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.results) { candidate in
                // Text(candidate.debugDescription)
                VStack(alignment: .leading, spacing: 3) {
                    Text("\(candidate.name) \(candidate.surname)")
                        .bold()
                        .foregroundColor(.primary)
                    Text("votes: \(candidate.votes)")
                    Text("% \(candidate.votesPercentage)")
                }
            }
            .navigationTitle("Overall results")
            .task {
                await refreshData()
            }
            .refreshable {
                await refreshData()
            }
        }
    }
}

private extension OverallElectionResultsView {
    func refreshData() async {
        do {
            try await viewModel.getOverallResults()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct OverallElectionResultsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            OverallElectionResultsView()
        }
    }
}
