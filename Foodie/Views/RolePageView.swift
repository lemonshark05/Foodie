//
//  RolePageView.swift
//  Foodie
//
//  Created by lemonshark on 2023/4/25.
//

import SwiftUI

struct RolePageView: View {
    @State private var selection = 0
    let tabBarIcons = ["person.crop.circle", "flag.circle", "plus.circle.fill", "checkmark.circle", "gearshape"]
    let tabBarLabels = ["Attributes", "Activities", "", "ToDo", "Settings"]
    let tabBarColors: [Color] = [.red, .green, Color(red: 0.97, green: 0.70, blue: 0.37), .blue, .purple]

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            customTabView
            customTabBar
        }
    }
    
    private var customTabView: some View {
        TabView(selection: $selection) {
            UserView()
                .tag(0)
            
            SearchView()
                .tag(1)
            
            AddView()
                .tag(2)
            
            DiscoverView()
                .tag(3)
            
            RestaurantView()
                .tag(4)
        }
        .tabViewStyle(DefaultTabViewStyle())
    }
    
    private var customTabBar: some View {
        VStack(spacing: 0) {
            Divider().padding(.horizontal, 15)
            HStack(spacing: 0) {
                ForEach(0..<5) { index in
                    if index == 2 {
                        tabBarButton(index: index, customColor: true)
                    } else {
                        tabBarButton(index: index, customColor: false)
                    }
                }
            }
            .frame(height: 70)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .padding(.horizontal, 15)
            .padding(.bottom, 0)
            .padding(.trailing, 5)
        }
    }
    
    private func tabBarButton(index: Int, customColor: Bool) -> some View {
        Button(action: {
            selection = index
        }) {
            VStack {
                Image(systemName: tabBarIcons[index])
                    .font(index == 2 ? .system(size: 48) : .system(size: 32))
                Text(tabBarLabels[index])
                    .font(index == 2 ? .system(size: 0) : .system(size: 12))
            }
            .foregroundColor(customColor ? Color(red: 0.99, green: 0.79, blue: 0.49) : (selection == index ? tabBarColors[index] : .gray))
            .frame(maxWidth: .infinity)
        }
    }
}

struct RolePageView_Previews: PreviewProvider {
    static var previews: some View {
        RolePageView()
    }
}
