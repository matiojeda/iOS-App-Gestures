//
//  RotationGestureOpt.swift
//  Gestures indepth
//
//  Created by Matías Ojeda on 8/12/22.
//

import SwiftUI

struct RotationGestureOpt: View {
    @State private var amount = Angle.zero
    @State private var finalAmount = Angle.zero
    
    var body: some View {
        Image("Argentina")
            .resizable()
            .rotationEffect(amount + finalAmount)
            .gesture(
                RotationGesture()
                    .onChanged{ value in
                        amount = value
                        
                    }
                    .onEnded{ value in
                            finalAmount += amount
                              amount = .zero
                    }
            )
    }
}

struct RotationGestureOpt_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureOpt()
    }
}
