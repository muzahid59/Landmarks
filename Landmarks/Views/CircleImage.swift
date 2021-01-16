//
//  CircleImage.swift
//  Landmarks
//
//  Created by Muzahidul on 16/1/21.
//

import SwiftUI

struct CircleImage: View {
    let image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4.0))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
