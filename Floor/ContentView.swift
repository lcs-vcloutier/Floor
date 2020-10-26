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
    
    // Define variables to control button
    @State var circleTapped = false
    @State var circlePressed = false
    
    var body: some View {
        ZStack{
            Image(systemName: "flame")
                .font(.system(size: 40, weight: .light))
                .offset(x: circlePressed ? -90 : 0, y: circlePressed ? -90 : 0)
                .rotation3DEffect(Angle(degrees: circlePressed ? 20 : 0), axis: (x: 10, y: -10, z: 0))
        }
        .frame(width: 60, height: 60)
        .background[
            ZStack{
                Circle()
                    .fill(Color("Background"))
                    .frame(width: 100, height: 100) // Button size
                    .shadow(Color("LightShadow"), radius: 8, x: -8, y: -8)
                    .shadow(Color("DarkShadow"), radius: 8, x: 8, y: 8)

            }
        ]
    }
}
