import SwiftUI

enum Tab: Int, Identifiable, Hashable {
    case firstRound
    case secondRound
    case settings

    var id: Int {
        rawValue
    }

    @ViewBuilder
    func makeTabContentView() -> some View {
        switch self {
        case .firstRound:
            FirstRoundResultsView()
        case .secondRound:
            OverallElectionResultsView()
        case .settings:
            SettingsView()
        }
    }

    @ViewBuilder
    var label: some View {
        Label(titleKey, systemImage: systemImage)
    }

    var titleKey: LocalizedStringKey {
        switch self {
        case .firstRound:
            return "First round"
        case .secondRound:
            return "Second round"
        case .settings:
            return "Settings"
        }
    }

    var systemImage: String {
        switch self {
        case .firstRound:
            return "tray.fill"
        case .secondRound:
            return "tray"
        case .settings:
            return "wrench.adjustable"
        }
    }
}
