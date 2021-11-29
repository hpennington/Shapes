//
//  ContentView.swift
//  ShapesSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct ContentView: View {
    @State var circleDocBlueColor = Color.blue
    @State var circleDocRedColor = Color.red
    @State var rectangleDocBasicColor = Color.orange
    @State var rectangleDocBasicLarge = false
    
    var body: some View {
        SwiftBook(
            docs: [
                CircleDoc(circleBlueColor: $circleDocBlueColor, circleRedColor: $circleDocRedColor),
                RectangleDoc(rectangleBasicColor: $rectangleDocBasicColor, rectangleBasicLarge: $rectangleDocBasicLarge),
            ],
            controls: [
                [
                    [
                        AnyView(SwiftBookControlColor(color: $circleDocBlueColor)),
                    ],
                    [
                        AnyView(SwiftBookControlColor(color: $circleDocRedColor)),
                    ],
                ],
                [
                    [
                        AnyView(SwiftBookControlColor(color: $rectangleDocBasicColor)),
                        AnyView(SwiftBookControlToggle(active: $rectangleDocBasicLarge)),
                    ],
                ],
            ]
        )
    }
}
