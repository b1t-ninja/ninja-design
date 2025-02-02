//
//  NinjaDialog.swift
//  NinjaDesign
//
//  Created by Nico Rückner on 02.02.25.
//

import SwiftUI

struct NinjaDialog: View {
  var title: String = "Ninja Title"
  var bodyText: String = "Ninjas are super cool and sneaky, we must make sure not to fall victim to one of them..."
  var bg: Color = .backgroundGray
  var titlePrimaryButton: String = "Primary"
  var primaryAction: (() -> Void)? = nil
  var titleSecondaryButton: String = "Secondary"
  var secondaryAction: (() -> Void)? = nil
  
    var body: some View {
      NinjaCard(bg: bg) {
        VStack(alignment: .leading, spacing: 20) {
          NinjaText(font: .title1, title: title)
          NinjaText(title: bodyText)
          
          HStack(spacing: 10) {
            NinjaButton(font: .headline, title: titlePrimaryButton, onClick: primaryAction)
            NinjaButton(font: .headline,title: titleSecondaryButton,buttonStyle: .secondary, onClick: secondaryAction)
          }
        }
        .padding(10)
      }
    }
}

#Preview {
    NinjaDialog()
}
