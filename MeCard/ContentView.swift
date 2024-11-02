import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 1.00)
                .ignoresSafeArea()
            VStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(.white, lineWidth: 4.0)
                    )
                Text("Kanav Goyal")
                    .font(.custom("LibreBaskerville-Regular", size: 36))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Computer Science Engineer")
                    .font(.custom("LibreBaskerville-Italic", size: 16))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "kanavgoyal898@gmail.com", image: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}

