//
//  sliderView.swift
//  Color Picker
//
//  Created by Nick Ryan on 3/15/24.
//

import SwiftUI

struct SliderView: View {
  @Binding var sliderValue: Double
  @Binding var sliderTint: Color
   var sliderLabel: String
        
        var body: some View {

          VStack {
            LabelText(text: sliderLabel)
            HStack {
              Slider(value: self.$sliderValue, in: 0.0...255.0)
                .tint(sliderTint)
              SliderValueLabel(num: sliderValue)
              }
          }
          .padding()
        }
         }

#Preview {
  SliderView(sliderValue: Binding.constant(45.00), sliderTint: Binding.constant(Color("redSliderColor")), sliderLabel: "Red")
}
