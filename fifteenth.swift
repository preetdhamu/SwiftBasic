import SwiftUI


// https://stackoverflow.com/questions/74250437/swiftui-grid-layout-using-stack
struct ContentView : View {
    
    var columns : [GridItem] = [
        GridItem(.flexible() , spacing : 5 , alignment : .center)
    ]

    var body : some View {
        HStack(alignment:.center , spacing : 5 ){
            /// A - J  and K 
            VStack (spacing : 5 ){
                LazyVGrid (columns : columns)   {
                makeContent("A")
                makeContent("B")
                makeContent("C")
                makeContent("E")
                makeContent("F")
                makeContent("G")
                makeContent("H")
                makeContent("I")
                makeContent("J")
            }  
            makeContent("K" , CGFloat(300.0))
            }
            /// D - L 
            VStack (spacing : 5 ){
             makeContent("D" , CGFloat(100.0) ,  CGFloat(300.0))
             makeContent("L")
            }
            
        }
    }

    

    private func makeContent(_ content : String , _ sizeWidth : CGFloat = 100.0  ,  _ sizeHeigth : CGFloat = 100.0 ) -> some View {
        return Text("\(content)")
            .backgroundColor(Color.red)
            .foregroundColor(.white)
            .cornerRadius(4)
            .frame( height : sizeHeigth , width : sizeWidth)
    }

}



struct ContentView_Previews : PreviewProvider {
    var static preview : some Previews{
        ContentView()
    }
}