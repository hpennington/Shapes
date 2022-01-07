//
//  BarChartDoc.swift
//  Shapes
//
//  Created by Hayden Pennington on 1/6/22.
//

import SwiftUI
import SwiftBook

struct BarChartBasic: View {
    @State private var title = "Basic BarChart"
    @State private var color = Color.blue
    
    let values = [0.1, 0.25, 0.125, 0.5, 0.75, 0.55, 0.178, 0.25, 0.375, 0.5, 0.65, 0.55]
    
    var body: some View {
        H1("BarChartView")
        P("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
        P("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.")
        SwiftBookComponent {
            BarChartView(title: title, color: color, values: values)
                .frame(width: 60 * CGFloat(values.count), height: 300)
        }
        SwiftBookControlTable {
            SwiftBookControlText(text: $title, label: "title")
            SwiftBookControlColor(color: $color, title: "color")
        }
        SwiftBookArgsTable {
            SwiftBookArgRow(title: "title", description: "The title of the bar chart", type: .string)
        }
        
    }
}

struct BarChartDoc: View {
    var body: some View {
        BarChartBasic()
    }
}
