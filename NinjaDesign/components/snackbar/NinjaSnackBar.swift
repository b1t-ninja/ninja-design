//
//  NinjaSnackBar.swift
//  NinjaDesign
//
//  Created by Nico Rückner on 02.02.25.
//

import SwiftUI

struct NinjaSnackBar: View {
  var title: String = "A ninja has been sighted"
  var buttonTitle: String = "Undo"
  var onClick: (() -> Void)? = nil
  var body: some View {
      NinjaCard {
        HStack(spacing: 20) {
          NinjaText(font: .title3, title: title)
          Button {
            if let handleClick = onClick {
              handleClick()
            }
          } label: {
            NinjaText(font: .title3, title: buttonTitle, fg: .foregroundPurple)
          }
        }
        .padding(10)
      }
    }
}

#Preview {
    NinjaSnackBar()
}
