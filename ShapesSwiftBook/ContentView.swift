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
    }
}
