//
//  ContentView.swift
//  Color Picker
//
//  Created by Nick Ryan on 3/5/24.
//

import SwiftUI

struct ContentView: View {
  @State private var redSliderValue: Double = 0.0
  @State private var greenSliderValue: Double = 0.0
  @State private var blueSliderValue: Double = 0.0
  @State private var boxColor = Color (red: 0.0, green: 0.0, blue: 0.0)

  
    var body: some View {
        VStack {
          Text("Color Picker")
            .font(.largeTitle)
          
          RoundedRectangle(cornerRadius: 0)
            .fill(boxColor)
          
           
            
          
          Text("Red")
            .font(.title3)
          HStack{
            Slider( value: self.$redSliderValue, in: 0.0...255.00)
            Text(String(Int(redSliderValue.rounded())))
          }
          Text("Green")
            .font(.title3)
          HStack{
            Slider( value: self.$greenSliderValue, in: 0.0...255.00)
            Text(String(Int(greenSliderValue.rounded())))
          }
          Text("Blue")
            .font(.title3)
          HStack{
            Slider(value: self.$blueSliderValue, in: 00.0...255.00)
            Text(String(Int(blueSliderValue.rounded())))
          }
          Button("Set Color") {
             boxColor = Color(red: redSliderValue/255, green: greenSliderValue/255, blue: blueSliderValue/255)
          }

                
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
