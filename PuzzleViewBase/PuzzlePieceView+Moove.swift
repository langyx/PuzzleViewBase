//
//  PuzzlePieceView+Moove.swift
//  PuzzleViewBase
//
//  Created by Yannis LANG on 27/03/2023.
//

import Foundation

extension PuzzlePieceView {
    func getMooveIndex(from coordinate: CGFloat, on axeSize: CGFloat) -> Int {
        let indexMoove = round(abs(coordinate) / (axeSize + inter))
        return Int(coordinate - axeSize / 2 < 0 ? -indexMoove : indexMoove)
    }
    
    func getColMooveIndex(from newPos: CGPoint) -> Int {
        getMooveIndex(from: newPos.x, on: colSize)
    }
    
    func getRowMooveIndex(from newPos: CGPoint) -> Int {
        getMooveIndex(from: newPos.y, on: rowSize)
    }
}
