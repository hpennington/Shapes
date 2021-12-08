//
//  ContentView.swift
//  ShapesIOSSwiftBook
//
//  Created by Hayden Pennington on 12/7/21.
//

import SwiftUI
import SwiftBook

struct ContentView: View {
    @State private var document: DocumentType = .circleView
    @State private var takeSnapshot: Bool = false
    
    // Called when a navigation cell is clicked.
    func onNavChange(document: String) {
        if let documentType = DocumentType.init(rawValue: document) {
            self.document = documentType
        }
    }
    
    // Add a case for every document
    enum DocumentType: String, CaseIterable {
        case circleView = "CircleView"
        case rectangleView = "RectangleView"
    }
    
    var body: some View {
        SwiftBook(takeSnapshot: $takeSnapshot, titles: DocumentType.allCases.map { $0.rawValue }, onNavChange: self.onNavChange) {
            switch(document) {
            case .circleView:
                CircleDoc(takeSnapshot: $takeSnapshot)
            case .rectangleView:
                RectangleDoc(takeSnapshot: $takeSnapshot)
            }
        }
    }
}
