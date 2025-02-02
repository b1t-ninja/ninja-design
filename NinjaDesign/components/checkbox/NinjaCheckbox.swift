//
//  NinjaCheckbox.swift
//  NinjaDesign
//
//  Created by Nico Rückner on 02.02.25.
//

import SwiftUI

struct NinjaCheckbox: View {
  @Binding var value: Bool
  @State private var hasBeenChecked = false
  var body: some View {
    Button {
      value.toggle()
      withAnimation {
        hasBeenChecked.toggle()
      }
    } label: {
      RoundedRectangle(cornerRadius: 2)
        .frame(width: 25, height: 25)
        .foregroundStyle(.backgroundDefault)
        .overlay(
          ZStack {
            RoundedRectangle(cornerRadius: 2)
              .stroke(.foregroundDefault)
            
            if hasBeenChecked {
              Image(systemName: "checkmark")
                .foregroundStyle(.foregroundGreen)
                .font(.system(size: CGFloat(Font.title2.fontSize)))
            }
          }
        )
    }
  }
}

#Preview {
  @Previewable @State var bo = false
  NinjaCheckbox(value: $bo)
}
