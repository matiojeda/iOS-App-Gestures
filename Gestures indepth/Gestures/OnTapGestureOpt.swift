//
//  onTapGesture.swift
//  Gestures indepth
//
//  Created by Matías Ojeda on 8/12/22.
//

import SwiftUI

struct OnTapGestureOpt: View {
    var body: some View {
        HStack{
            Text("Clickéame")
                .font(.headline)
                .padding()
                .background(.yellow)
                .cornerRadius(8)
                .onTapGesture {
                print("Texto clickeado!")
            }
            
            Text("Clickéame 2 veces")
                .font(.headline)
                .padding()
                .background(.orange)
                .cornerRadius(8)
                .onTapGesture(count:2) {
                    print("Texto clickeado 2 veces!")
                }
        }
    }
}

struct onTapGesture_Previews: PreviewProvider {
    static var previews: some View {
        OnTapGestureOpt()
    }
}
