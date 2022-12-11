//
//  MagnificationGestureOpt.swift
//  Gestures indepth
//
//  Created by Matías Ojeda on 8/12/22.
//

import SwiftUI

struct MagnificationGestureOpt: View {
    @State private var amount = 0.0
    @State private var finalAmount = 1.0
    
    var body: some View {
        Image("Argentina")
            .scaleEffect(finalAmount + amount)
            .gesture(
            MagnificationGesture()
                .onChanged{value in
                    amount = value - 1
                }
                .onEnded{value in
                    finalAmount += amount
                    amount = 0
                }
            )
    }
}

struct MagnificationGestureOpt_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureOpt()
    }
}
