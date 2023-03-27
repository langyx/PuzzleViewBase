//
//  PuzzlePieceView.swift
//  PuzzleViewBase
//
//  Created by Yannis LANG on 27/03/2023.
//

import SwiftUI

struct PuzzlePieceView: View {
    @State internal var offset = CGSize.zero
    @State internal var debug = ""
    
    let value: Int
    
    let row: Int
    let col: Int
    
    let colSize: CGFloat
    let rowSize: CGFloat
    let spacing: CGFloat
    
    let swapPos: (Index, Index) -> ()
    
    internal var inter: CGFloat { spacing * 2 }
    internal var oldIndex: Index {
        Index(x: col, y: row)
    }
    
    var body: some View {
        VStack {
            Text("\(value)")
            Text("\(offset.debugDescription)")
                .font(.footnote)
            Text(debug)
                .foregroundColor(.red)
                .font(.footnote)
        }
        .frame(maxWidth: colSize, maxHeight: rowSize)
        .background(value % 2 == 0 ? .red : .blue)
        .foregroundColor(.white)
        .offset(offset)
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
                }
                .onEnded(gestureEnded)
        )
    }
}

struct PuzzlePieceView_Previews: PreviewProvider {
    static var previews: some View {
        PuzzlePieceView(value: 1, row: 0, col: 0, colSize: 80, rowSize: 80, spacing: 10, swapPos: {_ , _ in})
    }
}
