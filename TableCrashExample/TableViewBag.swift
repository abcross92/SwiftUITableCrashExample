import Foundation
import SwiftUI

public struct TableViewBag: Identifiable {
    public let id: String
    let columnData: [TableColumnCell]
    let rowData: [TableRowData]

    public init(id: String, columns: [String], rows: [[String]]) {
        self.id = id
        self.columnData = columns.map { TableColumnCell(data: $0) }
        self.rowData = rows.map { TableRowData(data: $0) }
    }
}

struct TableColumnCell: Identifiable {
    let id = UUID()
    let data: String
}

struct TableRowData: Identifiable {
    let id = UUID()
    let data: [String]

    var cells: [TableRowCell] {
        return data.map { TableRowCell(data: $0) }
    }
}

struct TableRowCell: Identifiable {
    let id = UUID()
    let data: String
}
