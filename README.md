This project illustrates a crash in SwiftUI's `Table`

Calling init on TableColumnForEach with data multiple times will crash while call TableColumnForEach init with a range will not for the same data.

To reproduce the crash, leave the toggle enabled and tap the "Send new data" button 2 times.
