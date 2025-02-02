//
//  NinjaSearch.swift
//  NinjaDesign
//
//  Created by Nico Rückner on 02.02.25.
//

import SwiftUI


struct NinjaSearch: View {
  @Binding var value: String
  var font: Font = .title3
  var bg: Color = .backgroundDefault
  var fg: Color = .foregroundDefault
  var placeholder: String = "Search"
  
  var body: some View {
    HStack {
      Image(systemName: "magnifyingglass")
        .foregroundStyle(.foregroundDefault)
        .font(.system(size: CGFloat(Font.title3.fontSize)))
        .padding()
      TextField(placeholder, text: $value)
        .textFieldStyle(NinjaTextFieldStyle(bg: bg, fg: fg, font: font))
    }
  }
}

#Preview {
  @Previewable @State var bo: String = ""
  NinjaSearch(value: $bo)
}
