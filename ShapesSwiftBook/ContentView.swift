//
//  ContentView.swift
//  ShapesSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct ContentView: View {
    @State private var document: String = DocumentType.circleView.rawValue

    enum DocumentType: String, CaseIterable {
        case circleView = "CircleView"
        case rectangleView = "RectangleView"
    }
    
    var body: some View {
        SwiftBook(titles: DocumentType.allCases.map { $0.rawValue }, document: $document) {
            switch(DocumentType.init(rawValue: document)!) {
            case .circleView:
                CircleDoc()
            case .rectangleView:
                RectangleDoc()
            }
        }
    }
}
