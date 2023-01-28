import SwiftUI

struct AvatarView: View {
    let image: Image
    let size: CGFloat
    let strokeColor: Color
    let strokeLineWidth: CGFloat

    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: size)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(strokeColor, lineWidth: strokeLineWidth)
                    .frame(width: size, height: size)
            )
            .shadow(radius: 8)
    }
}

extension AvatarView {
    init(
        _ image: Image,
        size: CGFloat? = nil,
        strokeColor: Color? = nil,
        strokeLineWidth: CGFloat? = nil
    ) {
        self.image = image
        self.size = size ?? 120
        self.strokeColor = strokeColor ?? .white
        self.strokeLineWidth = strokeLineWidth ?? 4
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 16) {
            AvatarView(.pavel)
            AvatarView(.babis)
        }
        .background(Color(UIColor.systemBackground))
    }
}
