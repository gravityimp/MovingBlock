//
//  Account.swift
//  MovingBlock
//
//  Created by student on 19/12/2023.
//

import SwiftUI

struct Account: View {
    var body: some View {
        HStack {
            VStack {
                Text("Account Name")
                Text("Progress: 12/15")
                ProgressView("", value: 12, total: 15)
            }
            Spacer()
            Text(">").padding(.all, 2)
        }
        .padding()
        .overlay {
            RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 2)
        }
        .padding()
    }
}

#Preview {
    Account()
}
