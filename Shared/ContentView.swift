//
//  ContentView.swift
//  Shared
//
//  Created by m1 on 24/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Accueil")
                }
            UserView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profil")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
