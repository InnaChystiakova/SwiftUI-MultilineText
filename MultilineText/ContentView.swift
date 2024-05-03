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
            Text("\(Text("Марафон ").pinnedText(.gray))\(Text ("по"))\(Text(" SwiftUI \n"))\(Text("«Отцовский пинок»").bigText(.blue))")
            .background()
            .frame(width: currentWidth, height: 200)
            .border(Color.red)
        }
    }
}

extension Text {
    func pinnedText(_ color: Color) -> Text {
        self.foregroundStyle(color)
    }
}

extension Text {
    func bigText(_ color: Color) -> Text {
        self.foregroundStyle(color).font(.title).fontWeight(.bold)
    }
}
