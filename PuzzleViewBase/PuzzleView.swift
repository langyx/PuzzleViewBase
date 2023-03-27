//
//  PuzzleView.swift
//  PuzzleViewBase
//
//  Created by Yannis LANG on 27/03/2023.
//

import SwiftUI

struct PuzzleView: View {
    //Exemple of map
    @State internal var map = [[1, 2, 3], [4, 5, 6]]
    
    internal let colSize: CGFloat = 100
    internal let rowSize: CGFloat = 100
    internal let spacing: CGFloat = 10
    
    var body: some View {
        Grid(horizontalSpacing: spacing, verticalSpacing: spacing) {
            rows()
        }
    }
}

struct PuzzleView_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleView()
    }
}
