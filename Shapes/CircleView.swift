//
//  RoundView.swift
//  Shapes
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .frame(width: 300, height: 300, alignment: .center)
            .foregroundColor(color)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red)
    }
}
