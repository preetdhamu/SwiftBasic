import SwiftUI


struct ContentView : View {
    var body : some View {
        ZStack ( alignment : .leading){ 
            Rectangle()
            .fill(Color.red)
            .frame(width : 50 , height : 50 ) 
            ,

            VStack ( alignment : .leading , spacing : 10 ){
                Rectangle()
                .fill(Color.green)
                .frame(width : 50 , height : 50 )  ,
                Rectangle()
                .fill(Color.blue)
                .frame(width : 50 , height : 50 ) 
                
                HStack ( alignment : .top ) {
                    Rectangle()
                    .fill(Color.yellow)
                    .frame(width : 50 , height : 50 )  ,
                    Rectangle()
                    .fill(Color.voilet)
                    .frame(width : 50 , height : 50 )  ,
                }
            
            }
        }
    }
}