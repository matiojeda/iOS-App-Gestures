//
//  DragGesture.swift
//  Gestures indepth
//
//  Created by Matías Ojeda on 8/12/22.
//

import SwiftUI

struct DragGestureOpt: View {
    @State private var offsetValue = CGSize.zero
    var body: some View {
        Image("Argentina")
            .resizable()
            .frame(width: 300, height: 400)
            .cornerRadius(8)
            .offset(offsetValue)
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            offsetValue = gesture.translation
                        }
                )
                
    }
}

struct DragGesture_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureOpt()
    }
}
