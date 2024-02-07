//
//  DatePickerView.swift
//  SwiftBasics
//
//  Created by Muhammed Buğra on 7.02.2024.
//

import SwiftUI

struct DatePickerView: View {
    @State private var selectedDate = Date()

    var body: some View {
        VStack {
            DatePicker(
                "Tarih Seçin",
                selection: $selectedDate,
                displayedComponents: .date
            )
            .datePickerStyle(GraphicalDatePickerStyle())
            .padding()

            Text("Seçilen Tarih: \(selectedDate, formatter: dateFormatter)")
                .padding()

            // Seçilen tarihin haftanın gününü göster
            Text("Haftanın Günü: \(selectedDate, formatter: dayOfWeekFormatter)")
                .padding()
        }
        .navigationBarTitle("DatePicker", displayMode: .inline)
    }
}

// Tarih formatlayıcı
let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    return formatter
}()

// Haftanın gününü formatlayıcı
let dayOfWeekFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "EEEE"
    return formatter
}()

// Önizleme sağlayıcı
struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
