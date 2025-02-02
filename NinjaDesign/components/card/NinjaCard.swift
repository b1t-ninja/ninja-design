//
//  NinjaCard.swift
//  NinjaDesign
//
//  Created by Nico Rückner on 01.02.25.
//

import SwiftUI

struct NinjaCard<Content: View>: View {
  var content: Content
  var bg: Color
  
  init(bg: Color = .backgroundGray, @ViewBuilder content: () -> Content) {
    self.bg = bg
    self.content = content()
  }
  
  var body: some View {
    content
      .background(bg)
      .cornerRadius(10)
  }
}

#Preview {
  NinjaCard {
    Text("Hello")
  }
}
