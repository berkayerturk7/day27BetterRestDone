
import SwiftUI

struct WorkingWithDates: View {
    
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("\(dateOrnek())")
            //DateComponent kullanarak, current saati 08.00 yaptık
        
            Text(Date.now, format: .dateTime.hour().minute())
                .padding()
            // Yöntem-2
            
            Text(Date.now, format: .dateTime.day().month().year())
                .padding()
            // Yöntem-2 nin ay gün yıl kullanımı
            // bu sıralama ve gösterim, kullanıcının lokaline göre. (önce ay, yıl vs)
            
            Text(Date.now.formatted(date:.long, time: .shortened))
            // yöntem-3
            
            Text(Date.now.formatted(date:.long, time: .omitted))
            // yöntem-3'ün time omit edilmiş hali
            
        }
        
        
    }
    
    func dateOrnek() -> Date {
        //represented 8am -> Spesifik bir tarihe göre date ayarlama
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? Date.now
        
        return date
        
    }
    
    func dateOrnek2() -> String {
        // şimdiyi, saat ve dakikasını ayırarak almak - Yöntem -1
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        
        let birlestir = String(hour) + " " + String(minute)
       
        return birlestir
    }
    
}

struct WorkingWithDates_Previews: PreviewProvider {
    static var previews: some View {
        WorkingWithDates()
    }
}
