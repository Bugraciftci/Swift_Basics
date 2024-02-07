//
//  TextInputView.swift
//  SwiftBasics
//
//  Created by Muhammed Buğra on 7.02.2024.
//

import SwiftUI

struct TextInputView: View {
    @State private var userInput: String = ""

    var body: some View {
        VStack {
            TextField("Bir şeyler yazın", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Text("Girdiğiniz Metin: \(userInput)")
        }
        .padding()
        .navigationBarTitle("Metin Girişi", displayMode: .inline)
    }
}


#Preview {
    TextInputView()
}
