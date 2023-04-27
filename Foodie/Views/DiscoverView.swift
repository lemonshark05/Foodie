//
//  DiscoverView.swift
//  Foodie
//
//  Created by lemonshark on 2023/4/26.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        VStack(alignment: .leading){
            Image("discover")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(minHeight: 80, maxHeight: 90)
                .padding(.top, 20)
                .padding(.bottom, 10)
            
            Spacer()
            
            DiscoverCellView()
            
            Spacer()
            
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

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
