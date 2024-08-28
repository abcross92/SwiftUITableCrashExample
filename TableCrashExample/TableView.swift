//
//  TableView.swift
//
//
//  Created by Alex Cross on 8/17/24.
//

import SwiftUI



struct TableView: View {
    let viewBag: TableViewBag
    @State var useDataImplementation: Bool = true

    var body: some View {
        VStack {
            HStack {
                Spacer().frame(maxWidth: .infinity)
                Toggle(isOn: $useDataImplementation, label: {
                    Text("Build table from data")
                })
            }

            if useDataImplementation {
                Table(viewBag.rowData) {
                    TableColumnForEach(viewBag.columnData) { columnData in
                        TableColumn(columnData.data) { rowData in
                            if let index = viewBag.columnData.firstIndex(where: { column in
                                return column.data == columnData.data
                            }) {
                                Text(rowData.data[index])
                            } else {
                                Text("unable to parse")
                            }
                        }
                    }
                }
            } else {
                Table(viewBag.rowData) {
                    TableColumnForEach(0..<viewBag.columnData.count) { index in
                        TableColumn(viewBag.columnData[index].data) { rowData in
                            Text(rowData.data[index])
                        }
                    }
                }
            }
        }
    }
}

extension TableView {

    static func previewData(id: String) -> TableViewBag {
        TableViewBag(
            id: id,
            columns: ["column 1", "column 2"],
            rows: [["row1 column 1", "row1 column 2"],
                   ["row2 column 1", "row2 column 2"],
                   ["row 3 column 1", "row3 column 3"]])
    }
}

#Preview {
    TableView(viewBag: TableView.previewData(id: ""))
}
