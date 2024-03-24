//
//  ContentView.swift
//  Color Picker
//
//  Created by Nick Ryan on 3/5/24.
//

import SwiftUI

struct ContentView: View {
  @State private var redSliderValue: Double = Constants.InitialColorValues.red
  @State private var greenSliderValue: Double = Constants.InitialColorValues.green
  @State private var blueSliderValue: Double = Constants.InitialColorValues.blue
  @State private var boxColor = Color (red: Constants.InitialColorValues.red, green: Constants.InitialColorValues.green, blue: Constants.InitialColorValues.blue)
  
  @Environment(\.verticalSizeClass) var verticalSizeClass
  @Environment(\.horizontalSizeClass) var horizontalSizeClass
  
  
  var body: some View {
 
      VStack {
        TitleText(text: "Color Picker")
        RoundedRectangle(cornerRadius: 0)
          .fill(boxColor)
          .strokeBorder(Color.white.opacity(0.1), lineWidth: 15)
        
        SliderView(sliderValue: $redSliderValue, sliderTint: (Binding.constant(Color("RedSliderColor"))), sliderLabel: "Red")
        SliderView(sliderValue: $greenSliderValue, sliderTint: (Binding.constant(Color("GreenSliderColor"))), sliderLabel: "Green")
        SliderView(sliderValue: $blueSliderValue, sliderTint: (Binding.constant(Color("BlueSliderColor"))), sliderLabel: "Blue")
        
        
        Button("Set Color") {
          boxColor = Color(red: redSliderValue/Constants.Slider.sliderHigh, green: greenSliderValue/Constants.Slider.sliderHigh, blue: blueSliderValue/Constants.Slider.sliderHigh)
        }
        .padding()
        .foregroundColor(.white)
        .background(
          LinearGradient(gradient: Gradient(colors: [Color("ButtonColor"), Color.white.opacity(0.3)]), startPoint: .top, endPoint: .bottom)
        )
        
        .overlay(
          RoundedRectangle(cornerRadius: 10)
            .stroke(Color.white, lineWidth: 2)
        )
      }
      
      .padding()
    }
  }



  struct ContentView_Previews:
                                
    PreviewProvider {
    
      static var previews: some View {
    ContentView()
      }
  }
