//
//  RectangleView.swift
//  DemoSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI

struct RectangleView: View {
    var color: Color
    var large: Bool
    
    init(color: Color, large: Bool) {
        self.color = color
        self.large = large
    }
    
    var body: some View {
        Rectangle()
            .foregroundColor(self.color)
            .frame(width: self.large ? 500 : 300, height: self.large ? 500 : 300, alignment: .center)
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(color: .green, large: false)
    }
}
