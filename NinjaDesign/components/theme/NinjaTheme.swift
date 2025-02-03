//
//  NinjaTheme.swift
//  CrossDeviceInteraction
//
//  Created by Nico Rückner on 03.02.25.
//

import SwiftUI

struct NinjaTheme<Content: View>: View {
  var content: Content
  var bg: Color
  
  init(bg: Color = .backgroundDefault, @ViewBuilder content: () -> Content) {
    self.bg = bg
    self.content = content()
  }
  
  var body: some View {
    ZStack {
      bg.ignoresSafeArea()
      content
    }
  }
}

#Preview {
  NinjaTheme {
    Text("Hello")
  }
}
