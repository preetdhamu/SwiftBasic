import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            Circle()
                .trim(from: 0.25, to: 1)
                .stroke(Color.red, lineWidth: 5)
                .frame(width: 25, height: 25)
                .rotationEffect(.degrees(20))
            
            Circle()
                .trim(from: 0.5, to: 1)
                .stroke(Color.green, lineWidth: 5)
                .frame(width: 15, height: 15)
                .rotationEffect(.degrees(40))
            
            Circle()
                .trim(from: 0.74, to: 1)
                .stroke(Color.purple, lineWidth: 5)
                .frame(width: 5, height: 15)
                .rotationEffect(.degrees(80))
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
