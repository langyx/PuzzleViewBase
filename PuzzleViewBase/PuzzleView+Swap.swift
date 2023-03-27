//
//  PuzzleView+Swap.swift
//  PuzzleViewBase
//
//  Created by Yannis LANG on 27/03/2023.
//

import SwiftUI

extension PuzzleView {
    
    private var maxRowIndex: Int {
        max(map.count - 1, 0)
    }
    
    private var maxColIndex: Int {
        max((map.first?.count ?? 0) - 1, 0)
    }
    
    func swap(from source: Index, to destination: Index) {
//        print("from", source, "to", destination)
        guard source != destination else { return }
        guard maxRowIndex > 0 && maxColIndex > 0 else { return }
        guard destination.x >= 0 && destination.x <= maxColIndex else {
            return
        }
        guard destination.y >= 0 && destination.y <= maxRowIndex else {
            return
        }
        let saveDestinationValue = map[destination.y][destination.x]
        withAnimation {
            map[destination.y][destination.x] = map[source.y][source.x]
            map[source.y][source.x] = saveDestinationValue
        }
    }
}
