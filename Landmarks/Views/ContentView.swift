//
//  ContentView.swift
//  Landmarks
//
//  Created by Muzahidul on 16/1/21.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_PreViews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
    
}
