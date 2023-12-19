//
//  ContentView.swift
//  MovingBlock
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var login: String = ""
    
    var body: some View {
        VStack {
            Text("Moving Block").font(.system(size: 48)).bold().overlay {
                LinearGradient(
                    colors: [.red, .yellow, .green, .blue],
                    startPoint: .leading,
                    endPoint: .trailing
                ).mask(Text("Moving Block").font(.system(size: 48)).bold())
            }
            Text("by Yurii Tyshchenko").font(.caption)
            
            Spacer()
            
            VStack(alignment: .center, spacing: 11) {
                Text("Login")
                    .font(.system(size: 17, weight: .light))
                    .foregroundColor(.secondary)
                TextField("Login", text: $login)
                    .font(.system(size: 17, weight: .thin))
                    .foregroundColor(.primary)
                    .frame(height: 44)
                    .padding(.horizontal, 12)
                    .background(Color.white)
                    .cornerRadius(8.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.black, lineWidth: 2)
                    )
            }
            
            Spacer()
            
            ScrollView {
                VStack {
                    Text("Accounts").font(.title).bold().padding(.bottom, 16)
                    
                    Account()
                }.frame(width: 300)
            }
            .frame(width: 300, height: 300)
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.black, lineWidth: 2)
            }
            
            Spacer()
            
            Button(action: {
                debugPrint(login)
                print(login)
            }) {
                Text("PLAY")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(width: 215, height: 44, alignment: .center)
            }
            .background(
                LinearGradient(
                    colors: [.red, .blue],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .cornerRadius(4)
        }
        .frame(maxHeight: .infinity, alignment: .topLeading).padding()
    }
}

#Preview {
    ContentView()
}
