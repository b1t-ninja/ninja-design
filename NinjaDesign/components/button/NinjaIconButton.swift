//
//  NinjaIconButton.swift
//  NinjaDesign
//
//  Created by Nico Rückner on 01.02.25.
//

import SwiftUI

struct NinjaIconButton: View {
  var font: Font = .largeTitle
  var buttonStyle: ButtonStyle = .primary
  var icon: String = "arrow.right"
  var onClick: (() -> Void)? = nil
  
  var body: some View {
    Button {
      if let handleClick = onClick {
        handleClick()
      }
    } label: {
      Image(systemName: icon)
        .font(.system(size: CGFloat(font.fontSize)))
        .foregroundStyle(.foregroundDefault)
        .padding()
    }
  }
}

#Preview {
  NinjaIconButton()
}
