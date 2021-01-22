//
//  RndView.swift
//  Landmarks
//
//  Created by Muzahidul on 19/1/21.
//

import SwiftUI

struct RndView: View {
    @State private var isSelected = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill().foregroundColor(.black)
            
            Circle()
                .stroke()
                .foregroundColor(.white)
                .frame(width: 100, height: 100, alignment: .center)
            
            Circle()
                .frame(width: 15, height: 15, alignment: .center)
                .foregroundColor(.blue)
                .offset(x:-50)
                .rotationEffect(.degrees(isSelected ? 0 : 360))
                .animation(Animation.linear(duration: 4.0).repeatForever(autoreverses: false))
                .onAppear() {
                    isSelected.toggle()
                }
            
        }
        .rotation3DEffect(
            .degrees(70),
            axis: (x: 10, y: 0.0, z: 0.0))
    }
}

struct RndView_Previews: PreviewProvider {
    static var previews: some View {
        RndView()
    }
}
