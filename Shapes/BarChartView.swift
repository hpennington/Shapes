//
//  BarChartView.swift
//  Shapes
//
//  Created by Hayden Pennington on 1/6/22.
//

import SwiftUI

struct BarChartCell: View {
    let width: CGFloat
    let height: CGFloat
    let color: Color
    
    let cornerRadius: CGFloat = 8
    
    var body: some View {
        Rectangle()
            .frame(width: width, height: height)
            .foregroundColor(color)
            .cornerRadius(cornerRadius)
    }
}

struct BarChartView: View {
    let title: String
    let color: Color
    let values: [Double]
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .padding()
            Spacer(minLength: 20)
            HStack(alignment: .bottom) {
                ForEach(0..<values.count) { i in
                    BarChartCell(width: 40, height: CGFloat(values[i] * 300), color: color)
                }
            }
        }
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView(title: "BarChart", color: .blue, values: [0.1, 0.25, 0.125, 0.5, 0.75, 0.55])
    }
}
