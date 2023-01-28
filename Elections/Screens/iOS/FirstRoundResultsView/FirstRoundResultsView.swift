import SwiftUI

struct FirstRoundResultsView: View {
    var body: some View {
        HStack {
            AvatarView(.pavel)
            AvatarView(.babis)
        }
    }
}

struct FirstRoundResultsView_Previews: PreviewProvider {
    static var previews: some View {
        FirstRoundResultsView()
    }
}
