//
//  NinjaRadioButton.swift
//  NinjaDesign
//
//  Created by Nico Rückner on 02.02.25.
//

import SwiftUI

struct NinjaRadioButton: View {
  @State private var hasBeenClicked: Bool = false
  @Binding var value: Bool
  var body: some View {
    Button {
      value.toggle()
      withAnimation {
        hasBeenClicked.toggle()
      }
    } label: {
      Circle()
        .foregroundStyle(.backgroundDefault)
        .frame(width: 25, height: 25)
        .overlay(
          ZStack {
            Circle()
              .stroke(.foregroundDefault)
            if hasBeenClicked {
              Circle()
                .frame(width: 16, height: 16)
                .foregroundStyle(.foregroundDefault)
            }
          }
        )
    }
  }
}

#Preview {
  @Previewable @State var bo: Bool = false
  NinjaRadioButton(value: $bo)
}
