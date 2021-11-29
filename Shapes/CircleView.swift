//
//  RoundView.swift
//  Shapes
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let label: String
    let labelColor: Color
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 300, height: 300, alignment: .center)
                .foregroundColor(color)
            Text(label)
                .foregroundColor(labelColor)
                .font(.headline)
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, label: "Preview", labelColor: .primary)
    }
}
