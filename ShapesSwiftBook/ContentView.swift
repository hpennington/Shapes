//
//  ContentView.swift
//  ShapesSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct ContentView: View {
    
    enum DocumentType: String, CaseIterable {
        case circleView = "CircleView"
        case rectangleView = "RectangleView"
    }
    
    @State private var document: DocumentType = .circleView
    
    var body: some View {
        SwiftBook(titles: DocumentType.allCases.map { $0.rawValue }) {
            switch(document) {
            case .circleView:
                CircleDoc()
            case .rectangleView:
                RectangleDoc()
            }
        }
//        SwiftBook {
//            Text("testing")
//            Text("testing")
//            CircleDoc(
//                controls: [
//                    [
//                        AnyView(SwiftBookControlColor(color: $circleDocBlueColor, title: "color")),
//                        AnyView(SwiftBookControlColor(color: $circleDocBlueLabelColor, title: "labelColor")),
//                        AnyView(SwiftBookControlText(text: $circleDocBlueLabel, label: "label")),
//                    ],
//                    [
//                        AnyView(SwiftBookControlColor(color: $circleDocRedColor, title: "color")),
//                        AnyView(SwiftBookControlColor(color: $circleDocRedLabelColor, title: "labelColor")),
//                        AnyView(SwiftBookControlText(text: $circleDocRedLabel, label: "label")),
//                    ],
//                ]
//            )
//            RectangleDoc(
//                controls: [
//                    [
//                        AnyView(SwiftBookControlColor(color: $rectangleDocBasicColor, title: "color")),
//                        AnyView(SwiftBookControlToggle(active: $rectangleDocBasicLarge, title: "large")),
//                    ],
//                    [
//                        AnyView(SwiftBookControlColor(color: $rectangleDocLargeColor, title: "color")),
//                        AnyView(SwiftBookControlToggle(active: $rectangleDocLargeLarge, title: "large")),
//                    ],
//                    [
//                        AnyView(SwiftBookControlColor(color: $rectangleDocRedColor, title: "color")),
//                        AnyView(SwiftBookControlToggle(active: $rectangleDocRedLarge, title: "large")),
//                    ],
//                ]
//            )
//        }
    }
}
