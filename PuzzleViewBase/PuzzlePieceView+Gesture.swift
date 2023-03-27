//
//  PuzzlePieceView+Gesture.swift
//  PuzzleViewBase
//
//  Created by Yannis LANG on 27/03/2023.
//

import Foundation
import SwiftUI

extension PuzzlePieceView {
    func gestureEnded(_ gesture: DragGesture.Value) {
        let newPos = CGPoint(x: offset.width, y: offset.height)
        let swapX = getColMooveIndex(from: newPos)
        let swapY = getRowMooveIndex(from: newPos)
        let newIndex = oldIndex + Index(x: swapX, y: swapY)
//        debug = Index(x: swapX, y: swapY).description + "\n" + newIndex.description
        swapPos(oldIndex, newIndex)
        withAnimation {
            offset = .zero
        }
    }
}
