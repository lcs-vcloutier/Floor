//
//  ContentView.swift
//  Floor
//
//  Created by Cloutier, Vincent on 2020-10-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            // Create the background
            Rectangle()
                .fill(Color("Background"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            // Add circle button
            circleButton()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct circleButton: View {
    var body: some View {
        Text("...").font(.largeTitle).bold()
    }
}
