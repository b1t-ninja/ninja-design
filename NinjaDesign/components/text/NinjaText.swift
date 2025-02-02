//
//  NinjaText.swift
//  NinjaDesign
//
//  Created by Nico Rückner on 01.02.25.
//

import SwiftUI

enum Font {
  case largeTitle
  case title1
  case title2
  case title3
  case headline
  case body
  case callout
  case subhead
  case footnote
  case caption1
  case caption2
  
  var fontSize: Int {
    return switch self {
    case .largeTitle:
      34
    case .title1:
      28
    case .title2:
      22
    case .title3:
      20
    case .headline:
      17
    case .body:
      17
    case .callout:
      16
    case .subhead:
      15
    case .footnote:
      13
    case .caption1:
      12
    case .caption2:
      11
    }
  }
  
  var fontWeight: String {
    return switch self {
    case .largeTitle:
      "Black"
    case .title1:
      "Bold"
    case .title2:
      "Bold"
    case .title3:
      "Medium"
    case .headline:
      "Medium"
    default:
      "Regular"
    }
  }
}

struct NinjaText: View {
  var font: Font = .body
  var title: String = "NinjaButton"
  var fg: Color = Color.foregroundDefault
  
  var body: some View {
    Text(title).font(.custom("Satoshi-\(font.fontWeight)", size: CGFloat(font.fontSize)))
      .foregroundStyle(fg)
    }
}

#Preview {
  NinjaText(font: .largeTitle)
}
