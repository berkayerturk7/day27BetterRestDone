
import SwiftUI

struct MyStepper: View {
    
    @State private var sleepAmount = 8.0 // default
    @State private var sleepAmount2 = 10.0
    
    
    var body: some View {
        
        VStack {
            Stepper("\(sleepAmount) hours", value: $sleepAmount)
                .padding()
            
            Stepper("\(sleepAmount2.formatted()) hours", value: $sleepAmount2, in: 4...12, step: 0.25)
                .padding()
            // min 4 max 12 stepper + artıs mikt değiştirdik + formatladık
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyStepper()
    }
}
