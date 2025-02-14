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

struct NinjaPasswordInput: View {
  @Binding var value: String
  var font: Font = .title3
  var bg: Color = Color(red: 0, green: 0, blue: 0, opacity: 0)
  var fg: Color = .foregroundDefault
  var placeholder: String = "Type"
  var icon: String = "eye"
  @State private var showPassword: Bool = false
  
  var body: some View {
    HStack {
      if showPassword {
        TextField(placeholder, text: $value)
          .textFieldStyle(NinjaTextFieldStyle(bg: bg, fg: fg, font: font))
          .disableAutocorrection(true)
          .autocapitalization(.none)
        NinjaIconButton(font: font, icon: showPassword ? "eye.slash" : "eye", onClick: {showPassword.toggle()}).frame(height: 20)
      } else {
        SecureField(placeholder, text: $value)
          .disableAutocorrection(true)
          .autocapitalization(.none)
          .textFieldStyle(NinjaTextFieldStyle(bg: bg, fg: fg, font: font))
        NinjaIconButton(font: font, icon: showPassword ? "eye.slash" : "eye", onClick: {showPassword.toggle()}).frame(height: 20)
      }
    }
  }
}

struct NinjaTextInput: View {
  @Binding var value: String
  var font: Font = .title3
  var bg: Color = Color(red: 0, green: 0, blue: 0, opacity: 0)
  var fg: Color = .foregroundDefault
  var placeholder: String = "Type"
  var disableAutocorrect: Bool = false
  
  var body: some View {
    TextField(placeholder, text: $value)
      .disableAutocorrection(disableAutocorrect)
      .autocapitalization(.none)
      .textFieldStyle(NinjaTextFieldStyle(bg: bg, fg: fg, font: font))
  }
}

#Preview {
  @Previewable @State var text = "nothing"
  VStack {
    NinjaTextInput(value: $text)
    NinjaPasswordInput(value: $text)
  }
}
