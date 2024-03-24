//
//  BoxView.swift
//  Color Picker
//
//  Created by Nick Ryan on 3/15/24.
//

import SwiftUI

struct BoxView: View {
  var boxColor: Color

  var body: some View {
    RoundedRectangle(cornerRadius: 0)
      .fill(boxColor)
    //  .shadow(color: Color($boxColor).black.opacity(0.3), radius: 10, x:0, y:5)
  }
}

#Preview {
  BoxView(boxColor: .red)
}

//
