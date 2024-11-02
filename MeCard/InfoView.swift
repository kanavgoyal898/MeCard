import SwiftUI

struct InfoView: View {
    let text: String
    let image: String
    var body: some View {
        RoundedRectangle(cornerRadius: 24)
            .fill(.white)
            .frame(width: 324, height: 48)
            .overlay(
                HStack {
                    Image(systemName: image)
                    Text(text)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                }
            )
    }
}

#Preview {
    InfoView(text: "hello, world", image: "globe")
        .previewLayout(.sizeThatFits)
}
