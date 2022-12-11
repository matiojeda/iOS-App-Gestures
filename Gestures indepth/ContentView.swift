//
//  ContentView.swift
//  Gestures indepth
//
//  Created by Matías Ojeda on 8/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("onTapGesture",
                    destination: OnTapGestureOpt())
                NavigationLink("onLongPressGesture",
                    destination: OnLongPressGestureOpt())
                NavigationLink("DragGesture",
                    destination: DragGestureOpt())
                NavigationLink("RotationGesture",
                    destination: RotationGestureOpt())
                NavigationLink("MaginificationGesture",
                    destination: MagnificationGestureOpt())
                NavigationLink("Sequenced",
                    destination: SequencedOpt())
            }
            .navigationTitle("Menú de gestos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
