//
//  ContentView.swift
//  MultilineText
//
//  Created by Inna Chystiakova on 03/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue = 300.0
    
    var body: some View {
        VStack {
            ContainerView(currentWidth: $sliderValue)
            Slider(value: $sliderValue,
                   in: 100...300,
                   step: 1.0
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct ContainerView: View {
    
    @Binding var currentWidth: Double
    
    var body: some View {
        VStack {
            Group {
                Text("Марафон ").foregroundStyle(.gray)
                + Text("по ")
                + Text("SwiftUI ")
                + Text("«Отцовский пинок»").bigText(.blue)
            }
            .background(.clear)
            .frame(width: currentWidth, height: 200)
            .border(Color.red)
        }
    }
}

extension Text {
    func bigText(_ color: Color) -> Text {
        self.foregroundStyle(color).font(.title).fontWeight(.bold)
    }
}
