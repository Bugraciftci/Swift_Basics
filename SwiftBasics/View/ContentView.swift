//
//  ContentView.swift
//  SwiftBasics
//
//  Created by Muhammed Buğra on 7.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: CounterView()) {
                    Text("Sayı Artır/Azalt")
                }.buttonStyle(MainButtonStyle())

                NavigationLink(destination: ListView()) {
                    Text("Liste Görüntüle")
                }.buttonStyle(MainButtonStyle())

                NavigationLink(destination: ToggleView()) {
                    Text("Toggle Switch")
                }.buttonStyle(MainButtonStyle())

                NavigationLink(destination: DatePickerView()) {
                    Text("DatePicker")
                }.buttonStyle(MainButtonStyle())
                
                NavigationLink(destination: TextInputView()) {
                    Text("Metin Girişi")
                }.buttonStyle(MainButtonStyle())
            }
            .navigationBarTitle("Ana Menü", displayMode: .large)
            .padding()
        }
    }
}

struct MainButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(8)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

#Preview {
    ContentView()
}


