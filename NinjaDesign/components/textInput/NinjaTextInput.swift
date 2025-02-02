//
//  NinjaTextInput.swift
//  NinjaDesign
//
//  Created by Nico Rückner on 01.02.25.
//

import SwiftUI

struct NinjaTextFieldStyle: TextFieldStyle {
  var bg: Color
  var fg: Color
  var font: Font
  func _body(configuration: TextField<Self._Label>) -> some View {
    configuration
      .padding(10)
      .background(bg)
      .foregroundStyle(fg)
      .cornerRadius(10)
      .font(.custom("Satoshi-\(font.fontWeight)", size: CGFloat(font.fontSize)))
      .overlay(
        RoundedRectangle(cornerRadius: 10)
          .stroke(.foregroundDefault, lineWidth: 1)
      )
  }
}

struct NinjaTextInput: View {
  @Binding var value: String
  var font: Font = .title3
  var bg: Color = .backgroundDefault
  var fg: Color = .foregroundDefault
  var placeholder: String = "Type"
  
  var body: some View {
    TextField(placeholder, text: $value)
      .textFieldStyle(NinjaTextFieldStyle(bg: bg, fg: fg, font: font))
  }
}

#Preview {
  @Previewable @State var text = "nothing"
  NinjaTextInput(value: $text)
}
