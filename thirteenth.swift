import SwiftUI

struct ContentView : View {
    var body : some View {
        VStack ( alignment : .leading  ){
            Text("Hello , World ! ")
            .font(.title)
            ,
            Text("my name is Gurpreet and I want to be a ios devleoper and become the most effective Developer of the Era in the World . We are the champions ")
            .font(system(size : 16 ))
        
        }
        .backgroundColor(Color.green)
        .padding(.leading : 10 , .trailing : 10 )

    }
}