//
//  NinjaSwitch.swift
//  NinjaDesign
//
//  Created by Nico Rückner on 02.02.25.
//

import SwiftUI

struct NinjaSwitch: View {
  @Binding var value: Bool
  var body: some View {
    Button {
      withAnimation {
        value.toggle()
      }
    } label: {
      RoundedRectangle(cornerRadius: 20)
        .frame(width: 50, height: 25)
        .foregroundStyle(.backgroundDefault)
        .overlay(
          ZStack {
            RoundedRectangle(cornerRadius: 20)
              .stroke(.foregroundDefault)
              .background(value ? .backgroundGreen : Color(red: 0, green: 0, blue: 0, opacity: 0))
            Circle()
              .foregroundStyle(.foregroundDefault)
              .frame(width: 16, height: 16)
              .padding(value ? .leading : .trailing)
          }
        )
    }
  }
}

#Preview {
  @Previewable @State var bo: Bool = false
  NinjaSwitch(value: $bo)
}
