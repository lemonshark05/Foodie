//
//  ContentView.swift
//  Foodie
//
//  Created by lemonshark on 2023/4/25.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        NavigationView {
            HomePageView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
