//
//  RndView.swift
//  Landmarks
//
//  Created by Muzahidul on 19/1/21.
//

import SwiftUI

struct RndView: View {
    @State private var isSelected = true
    
    var body: some View {
        VStack(alignment: .leading) {
            Toggle(isOn: $isSelected) {
                Text("Show Favourite")
            }.frame(width: 200)
            Text( isSelected ? "On" : "Off")
                .font(.title)
            Menu("Menu") {
                Text("Menu Item 1")
                Text("Menu Item 2")
                Text("Menu Item 3")
            }
        }
    }
}

struct RndView_Previews: PreviewProvider {
    static var previews: some View {
        RndView()
    }
}
