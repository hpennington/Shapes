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
    let cornerRadius: CGFloat
    
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
    let cellWidth: CGFloat
    let cellSpacing: CGFloat
    let maxHeight: CGFloat
    let cornerRadius: CGFloat
    
    let DEFAULT_CELL_WIDTH: CGFloat = 40
    let DEFAULT_CELL_SPACING: CGFloat = 8
    let DEFAULT_MAX_HEIGHT: CGFloat = 300
    let DEFAULT_CORNER_RADIUS: CGFloat = 8
    
    init(title: String, color: Color, values: [Double]) {
        self.title = title
        self.color = color
        self.values = values
        self.cellWidth = DEFAULT_CELL_WIDTH
        self.cellSpacing = DEFAULT_CELL_SPACING
        self.maxHeight = DEFAULT_MAX_HEIGHT
        self.cornerRadius = DEFAULT_CORNER_RADIUS
    }
    
    init(title: String, color: Color, values: [Double], cellWidth: CGFloat, cellSpacing: CGFloat, maxHeight: CGFloat, cornerRadius: CGFloat) {
        self.title = title
        self.color = color
        self.values = values
        self.cellWidth = cellWidth
        self.cellSpacing = cellSpacing
        self.maxHeight = maxHeight
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .padding()
            Spacer(minLength: 20)
            HStack(alignment: .bottom, spacing: self.cellSpacing) {
                ForEach(0..<values.count) { i in
                    BarChartCell(width: self.cellWidth, height: CGFloat(CGFloat(values[i]) * self.maxHeight), color: color, cornerRadius: cornerRadius)
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
