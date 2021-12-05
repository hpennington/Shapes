//
//  RectangleView.swift
//  DemoSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI

struct RectangleView: View {
    let color: Color
    let large: Bool
    
    var body: some View {
        Rectangle()
            .foregroundColor(self.color)
            .frame(width: self.large ? 2000 : 300, height: self.large ? 500 : 300, alignment: .center)
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(color: .green, large: false)
    }
}
