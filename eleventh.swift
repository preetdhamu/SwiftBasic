 // Text + Shape Program in SwiftUI
import SwiftUI

// Let's App name is "FirstProject"

@main 
struct FirstProjectApp : App {
    var body : some Scene {
        WindowGroup{
            ContentView()
        }
    }
}




// Inside the ContentView File 

struct ContentView : View {
    var body : some View {
        Text("Helllo")
        .font(.title)
        .foregroundColor(Color.green)
        .padding()
        .background(
            LinearGradient(
                ghradient: Gradient (
                    colors : [ Color.green , Color.blue]
                
                )
            )
            ,
            startPoint : .topLeading
            endPoiont : .bottomTrailing
        )
    }
}

struct ContentView_Preview : PreviewProvider {
     static var previews  : some View {
        ContentView()
    }
}