//
//  DiscoverCellView.swift
//  Foodie
//
//  Created by lemonshark on 2023/4/26.
//

import SwiftUI

struct DiscoverCellView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 13)
                .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                .frame(width: 343, height: 343)

                ZStack {
                    Text("Sushi Gen")
                    .fontWeight(.bold)
                    .font(.footnote)
                    .offset(x: 10, y: -6.50)

                    Text("@userA")
                    .font(.caption2)
                    .offset(x: 0, y: 7.50)

                    Ellipse()
                    .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                    .offset(x: -55.50, y: 10)
                    .frame(width: 45, height: 45)
                }
                .frame(width: 139, height: 28)
            }
            .offset(x: 4.50, y: -71)
            .frame(width: 343, height: 387)
        }
    }
}

struct DiscoverCellView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverCellView()
    }
}
