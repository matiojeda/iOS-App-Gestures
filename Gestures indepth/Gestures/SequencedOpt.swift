//
//  SequencedOpt.swift
//  Gestures indepth
//
//  Created by Matías Ojeda on 8/12/22.
//

import SwiftUI

struct SequencedOpt: View {
    @State private var message = "Puedes presionar largo y luego arrastrar"
    @State private var offsetValue = CGSize.zero
    var body: some View {
        let longPress = LongPressGesture()
            .onEnded{ _ in
                print("Presión larga detectada. Ahora puedes arrastrar.")
            }
        
        let drag = DragGesture()
            .onChanged{ gesture in
                offsetValue = gesture.translation
            }
        
        let sequence = longPress.sequenced(before: drag)
        
        Image("Argentina")
            .offset(offsetValue)
            .gesture(sequence)
        
    }
}

struct SequencedOpt_Previews: PreviewProvider {
    static var previews: some View {
        SequencedOpt()
    }
}
