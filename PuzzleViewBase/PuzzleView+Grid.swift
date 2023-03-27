//
//  PuzzleView+Gri.swift
//  PuzzleViewBase
//
//  Created by Yannis LANG on 27/03/2023.
//

import SwiftUI

extension PuzzleView {
    func rows() -> some View {
        ForEach(Array(map.enumerated()), id: \.offset) { indexRow, row in
            GridRow {
                columns(row: row, rowIndex: indexRow)
            }
        }
    }
    
    func columns(row: [Int], rowIndex:Int) -> some View {
        ForEach(Array(row.enumerated()), id: \.offset) { indexColumn, value in
            PuzzlePieceView(value: value,row: rowIndex, col: indexColumn, colSize: colSize, rowSize: rowSize, spacing: spacing, swapPos: swap)
        }
    }
}
