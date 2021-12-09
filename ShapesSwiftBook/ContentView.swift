//
//  ContentView.swift
//  ShapesSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct ContentView: View {
    @State private var document: DocumentType = .circleView
    @ObservedObject var appModel = SwiftBookModel()
    
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
        SwiftBook(titles: DocumentType.allCases.map { $0.rawValue }, onNavChange: self.onNavChange) {
            switch(document) {
            case .circleView:
                CircleDoc()
            case .rectangleView:
                RectangleDoc()
            }
        }.environmentObject(appModel)
    }
}
