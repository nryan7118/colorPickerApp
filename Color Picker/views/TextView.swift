//
//  TextView.swift
//  Color Picker
//
//  Created by Nick Ryan on 3/15/24.
//

import SwiftUI

struct TitleText: View {
  var text: String
  var body: some View {
    VStack {
      Text(text)
        .bold()
        .font(.largeTitle)
        .foregroundColor(Color("TextColor"))
    }
  }
}

struct LabelText: View {
  var text: String
  
  var body: some View {
    
    VStack {
      Text(text)
        .font(.headline)
        .foregroundColor(Color("TextColor"))
    }
  }
}

struct SliderValueLabel: View {
  var num: Double
  
  var body: some View {
    Text(String(Int(num.rounded())))

  }
}

struct TextView_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      TitleText(text: "Color Picker")
      LabelText(text: "Red")
      SliderValueLabel(num: 45.32)
    }
  }
}

