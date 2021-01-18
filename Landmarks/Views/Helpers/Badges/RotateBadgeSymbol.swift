//
//  RotateBadgeSymbol.swift
//  Landmarks
//
//  Created by Muzahidul on 18/1/21.
//

import SwiftUI

struct RotateBadgeSymbol: View {
    let angel: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angel, anchor: .bottom)
    }
}

struct RotateBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotateBadgeSymbol(angel: Angle(degrees: 5))
    }
}
