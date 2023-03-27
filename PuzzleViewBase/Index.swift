//
//  Index.swift
//  PuzzleViewBase
//
//  Created by Yannis LANG on 27/03/2023.
//

import Foundation

struct Index {
    var x: Int
    var y: Int
}

extension Index: CustomStringConvertible {
    var description: String {
        "(\(y));(\(x))"
    }
}

extension Index: Equatable {
    static func +(lhs: Index, rhs: Index) -> Index {
        Index(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
    
    static func ==(lhs: Index, rhs: Index) -> Bool {
        lhs.x == rhs.x && lhs.y == rhs.y
    }
}
