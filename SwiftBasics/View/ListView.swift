//
//  ListView.swift
//  SwiftBasics
//
//  Created by Muhammed Buğra on 7.02.2024.
//

import SwiftUI

struct ListView: View {
    let items = ["Elma", "Armut", "Muz", "Kiraz", "Çilek"]
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Meyveler")) {
                    List(items, id: \.self) { item in
                        Text(item)
                    }
                }
            }
            Form {
                Section(header: Text("Sayılar")) {
                    ForEach(1..<20) { index in
                        Text("Row \(index)")
                    }
                }
            }
            Form {
                Section(header: Text("Tekrar")){
                    ForEach(1..<5) { index in
                        Text("Hello World")
                    }
                }
            }
        }
    }
}

#Preview {
    ListView()
}
