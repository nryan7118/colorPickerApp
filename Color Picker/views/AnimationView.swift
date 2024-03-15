//
//  ContentView.swift
//  Color Picker
//
//  Created by Nick Ryan on 3/5/24.
//

import SwiftUI

struct AnimationView: View {
  @State private var redSliderValue: Double = 250.0
  @State private var greenSliderValue: Double = 100.0
  @State private var blueSliderValue: Double = 50.0
  @State private var boxColor = Color (red: 0.0, green: 0.0, blue: 0.0)
  
  
  var body: some View {
    HStack {
      VStack {
        TitleText(text: "Color Picker")
        RoundedRectangle(cornerRadius: 0)
          .fill(boxColor)
          .strokeBorder(Color.white.opacity(0.1), lineWidth: 15)
      }
      VStack {
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
  }
  
  
  struct AnimationView_Previews: 
    
    PreviewProvider {
    
    static var previews: some View {
          AnimationView()
      }
  }
