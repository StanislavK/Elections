import SwiftUI

struct AppTabNavigation: View {

    private var availableTabs: [Tab] {
        [.secondRound, .firstRound, .settings]
    }
    
    var body: some View {
        TabView {
            ForEach(availableTabs) { tab in
                tab
                    .makeTabContentView()
                    .tag(tab)
                    .tabItem { tab.label }
            }
        }
    }
}

struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}
