
import SwiftUI

struct MyDatePicker: View {
    @State private var wakeUp = Date.now
    

    
    var body: some View {
        
        VStack {
            Text("\(wakeUp)")
            DatePicker("", selection: $wakeUp)
                // şuan tüm tarih ve zamanlardan istediğimizi seçebiliriz
               // .labelsHidden() // labelı kaldırır ve ortalar.
            DatePicker("", selection: $wakeUp, displayedComponents: .hourAndMinute)
                // datePicker'ın sadece saat/dk kısmını kullanmak için
            DatePicker("", selection: $wakeUp, in: Date.now...)
                // bu tarihten sonra her şey
        }
        
    }
}
    // DatePicker'ın in: kısmına aralık girebiliriz Stepperdaki gibi.
    // Aşağıda aralık örnekleri
    
   /*
        // create a second Date instance set to one day in seconds from now
        let tomorrow = Date.now.addingTimeInterval(86400)

        // create a range from those two
        let range = Date.now...tomorrow
    */

struct MyDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        MyDatePicker()
    }
}
