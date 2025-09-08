import Foundation



var ableToSpeakPunjabi : String? = "Punjabi"
var ableToSpeakHindi : String? = "Hindi" 
var ableToSpeakRajasthani : String? = "Rajasthan" 




//// nil colscing  -> ??
///  if let 
///  guard 


print(personAbilityWithGuard())

/// if let 
func personAbilityWithIfLet() -> String {
   if let ableToSpeakPunjabi , let ableToSpeakHindi , let ableToSpeakRajasthani {
        /////// Execution Comes Here If Allllllll Value are not Nil And True 
        return "You know :\(ableToSpeakPunjabi) , \(ableToSpeakHindi) , \(ableToSpeakRajasthani)"
   } else {
       return "You Don't Know "
   }
}

// Guard
func personAbilityWithGuard() -> String {
   guard let ableToSpeakPunjabi , let ableToSpeakHindi , let ableToSpeakRajasthani else {
       return "You Don't Know "
   }
   return "You know :\(ableToSpeakPunjabi) , \(ableToSpeakHindi) , \(ableToSpeakRajasthani)"

}