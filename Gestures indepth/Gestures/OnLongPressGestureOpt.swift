//
//  OnLongPressGesture.swift
//  Gestures indepth
//
//  Created by Matías Ojeda on 8/12/22.
//

import SwiftUI

struct OnLongPressGestureOpt: View {
    var body: some View {
        HStack{
            Text("Tap largo").onLongPressGesture{
                print("Tap largo detectado")
            }
            .font(.headline)
            .padding()
            .background(.yellow)
            .cornerRadius(8)
            
            Text("Tap largo de 4 segundos")
                .onLongPressGesture(minimumDuration: 4, maximumDistance: 15, perform: {
                    print("Tap largo detectado")
                },
                onPressingChanged: {state in
                    print(state)
                })
                .font(.headline)
                .padding()
                .background(.orange)
                .cornerRadius(8)
        }
    }
}

struct OnLongPressGesture_Previews: PreviewProvider {
    static var previews: some View {
        OnLongPressGestureOpt()
    }
}
