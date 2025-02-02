//
//  NinjaButton.swift
//  NinjaDesign
//
//  Created by Nico Rückner on 01.02.25.
//

import SwiftUI

enum ButtonStyle {
  case primary
  case secondary
  
  
  var bg: Color {
    return switch self {
    case .primary:
        .backgroundBlue
    case .secondary:
      Color(red: 0, green: 0, blue: 0, opacity: 0)
    }
  }
}

struct NinjaButton: View {
  var font: Font = .largeTitle
  var title: String = "Button"
  var buttonStyle: ButtonStyle = .primary
  var onClick: (() -> Void)? = nil
  
  var body: some View {
    Button {
      if let handleClick = onClick {
        handleClick()
      }
    } label: {
      NinjaText(font: font, title: title, fg: .foregroundDefault)
        .padding()
        .background(buttonStyle.bg)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(
          RoundedRectangle(cornerRadius: 10)
            .stroke(.foregroundDefault, lineWidth: 1)
            .opacity(buttonStyle == .secondary ? 1.0 : 0)
        )
    }
  }
}


#Preview {
  ZStack {
    Color.backgroundDefault.ignoresSafeArea()
    VStack {
      NinjaButton()
      NinjaButton(buttonStyle: .secondary)
    }
  }
}
