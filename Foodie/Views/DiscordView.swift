//
//  DiscordView.swift
//  Foodie
//
//  Created by lemonshark on 2023/4/26.
//

import SwiftUI

struct DiscordView: View {
    var body: some View {
        VStack{
            Text("Discover")
            .fontWeight(.bold)
            .font(.system(size: 50))
            .padding(.bottom, 40)

            Text("WHAT’S NEW DISHES TODAY")
            .fontWeight(.bold)
            .font(.footnote)
            .tracking(0.52)
            .padding(.bottom, 40)

            DiscoverCellView()

            Text("SEE MORE")
            .fontWeight(.black)
            .font(.footnote)
            .padding(.top, 19)
            .padding(.bottom, 18)
            .frame(width: 343, height: 52)
            .cornerRadius(6)
            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color(red: 0.29, green: 0.17, blue: 0.07), lineWidth: 2))
            .frame(width: 343, height: 52)
        }
    }
}
struct Dish: Identifiable {
    let id: Int
    let title: String
    let user: String
}
struct DiscordView_Previews: PreviewProvider {
    static var previews: some View {
        DiscordView()
    }
}
