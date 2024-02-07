//
//  DetailView.swift
//  SwiftBasics
//
//  Created by Muhammed Buğra on 7.02.2024.
//

import SwiftUI

struct CounterView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("Sayı: \(count)")
                .font(.largeTitle)
            HStack(spacing: 40) {
                Button(action: { self.count -= 1 }) {
                    Text("-")
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .clipShape(Circle())
                }
                Button(action: { self.count += 1 }) {
                    Text("+")
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .clipShape(Circle())
                }
            }
        }
        .padding()
    }
}


#Preview {
    CounterView()
}

