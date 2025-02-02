//
//  ContentView.swift
//  NinjaDesign
//
//  Created by Nico Rückner on 01.02.25.
//

import SwiftUI

struct ContentView: View {
  @State private var text = ""
  @State private var clicked = false
  var body: some View {
    ZStack {
      Color.backgroundDefault.ignoresSafeArea()
      ScrollView {
        VStack {
          NinjaText(font: .title1, title: "Ninjas")
          NinjaText(font: .title3, title: "Ninjas are really cool")
          
          NinjaButton(font: .headline, title: "Primary", buttonStyle: .primary)
          NinjaButton(font: .headline, title: "Secondary", buttonStyle: .secondary)
          
          NinjaCard(bg: .backgroundYellow) {
            NinjaText(font: .title3, title: "Today I went on a secret ninja training trip and it was amazing")
              .padding(20)
          }
          NinjaIconButton(font: .title3, icon: "arrow.left")
          NinjaTextInput(value: $text, placeholder: "Type stuff here")
            .padding(.horizontal)
          NinjaCheckbox(value: $clicked)
          NinjaDialog()
          NinjaRadioButton(value: $clicked)
          NinjaSearch(value: $text)
          NinjaSnackBar()
          NinjaSwitch(value: $clicked)
        }
      }
    }
  }
}

#Preview {
    ContentView()
}
