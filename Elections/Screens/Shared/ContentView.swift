import SwiftUI

struct ContentView: View {
    var body: some View {
        #if os(iOS)
        AppTabNavigation()
        #elseif os(macOS)
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Elections 2023")
            Text("wip")
        }
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
