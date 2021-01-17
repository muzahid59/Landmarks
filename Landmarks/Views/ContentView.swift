//
//  ContentView.swift
//  Landmarks
//
//  Created by Muzahidul on 16/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_PreViews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
    
}
