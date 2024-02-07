//
//  ToggleView.swift
//  SwiftBasics
//
//  Created by Muhammed Buğra on 7.02.2024.
//

import SwiftUI

struct ToggleView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false // Uygulamanın genel tema durumunu saklamak için
    @State private var isSimpleToggleOn = false
    @State private var isColoredToggleOn = false
    @State private var isConditionalToggleOn = false
    @State private var isImageToggleOn = false
    @State private var isLabelledToggleOn = false
    @State private var isCustomAnimationToggleOn = false

    var body: some View {
        Form {
            Section(header: Text("Basit Toggle")) {
                Toggle("Basit Switch", isOn: $isSimpleToggleOn)
            }
            
            Section(header: Text("Renkli Toggle")) {
                Toggle(isOn: $isColoredToggleOn) {
                    Text("Renkli Switch")
                }
                .toggleStyle(ColoredToggleStyle())
            }
            
            Section(header: Text("Koşullu Toggle")) {
                Toggle(isOn: $isConditionalToggleOn) {
                    Text(isConditionalToggleOn ? "Açık" : "Kapalı")
                }
            }
            
            Section(header: Text("İkonlu Toggle")) {
                Toggle(isOn: $isDarkMode) {
                    HStack {
                        Image(systemName: isDarkMode ? "moon.fill" : "sun.max.fill")
                        Text("Gece Modu")
                    }
                }
            }
            
            Section(header: Text("Özel Animasyonlu Toggle")) {
                Toggle(isOn: $isCustomAnimationToggleOn) {
                    Text("Animasyonlu Switch")
                }
                .toggleStyle(AnimatedToggleStyle())
            }
        }
        .navigationBarTitle("Toggle Örnekleri", displayMode: .inline)
        .preferredColorScheme(isDarkMode ? .dark : .light)

    }
}

// Özelleştirilmiş bir ToggleStyle örneği
struct ColoredToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            Rectangle()
                .foregroundColor(configuration.isOn ? .green : .red)
                .frame(width: 50, height: 30)
                .overlay(
                    Circle()
                        .foregroundColor(.white)
                        .padding(.all, 3)
                        .offset(x: configuration.isOn ? 10 : -10, y: 0)
                )
                .onTapGesture { configuration.isOn.toggle() }
                .animation(.spring(response: 0.2, dampingFraction: 0.5, blendDuration: 0))
        }
    }
}

// Bir başka özelleştirilmiş ToggleStyle örneği animasyonlu geçişler için
struct AnimatedToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "xmark.circle")
                .foregroundColor(configuration.isOn ? .green : .red)
                .font(.system(size: 25))
                .onTapGesture { configuration.isOn.toggle() }
                .animation(.easeInOut)
        }
    }
}

// Önizleme için kullanılacak yapı
struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
