//
//  MovingBlockModel.swift
//  MovingBlock
//
//  Created by student on 12/12/2023.
//

import Foundation
import SwiftUI

struct MovingBlockModel {
    
    private(set) var cells: [[Cell]]
    
    
    
    struct Cell {
        var x: Int
        var y: Int
    }
    
    struct Block {
        var cell: Cell
        var color: Color
    }
}
