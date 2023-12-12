//
//  Block.swift
//  MovingBlock
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct Block: View {
    
    //var block: MovingBlockModel.Block
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12.0).stroke(.blue, lineWidth: 4).background(RoundedRectangle(cornerRadius: 12.0).fill(.yellow)).aspectRatio(CGSize(width: 1, height: 1), contentMode: .fill).frame(width: 64, height: 64)
    }
}

#Preview {
    Block()
}
