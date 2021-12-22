//
//  DocumentsTable.swift
//  Shapes
//
//  Created by Hayden Pennington on 12/19/21.
//

import SwiftUI
import SwiftBook

public final class DocumentsTable: SwiftBookDocumentsTable {
    public init() {}
    
    public var documentsTable: [(String, AnyView)] = [
        ("CircleView", AnyView(CircleDoc())),
        ("RectangleView", AnyView(RectangleDoc())),
    ]
}
