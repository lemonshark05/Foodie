//
//  AddView.swift
//  Foodie
//
//  Created by lemonshark on 2023/4/27.
//

import SwiftUI

struct AddView: View {
    var body: some View {
        ZStack {
            
            Ellipse()
                .fill(Color.clear) // Use clear color so the image will be visible
                .overlay(
                    Image("Sushi") // Replace "01" with the name of your image asset
                        .resizable()
                        .scaledToFill()
                        .frame(width: 160, height: 160)
                        .clipShape(Ellipse())
                )
                .offset(x: 0.50, y: -260)

            Text("Sushi Gen")
                .font(.largeTitle)
                .offset(x: 0.50, y: -150)

            StartView(score: 3)
                .frame(width: 200, height: 50) // Resize StartView
                .tracking(0.52)
                .offset(x: 0, y: -106.50)

            Text("BOOKMARK")
                .fontWeight(.black)
                .font(.footnote)
                .padding(.vertical, 18)
                .padding(.horizontal, 16)
                .frame(width: 343, height: 52)
                .background(Color(red: 0.99, green: 0.79, blue: 0.49))
                .cornerRadius(6)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(red: 0.99, green: 0.79, blue: 0.49), lineWidth: 2)
                )
                .offset(x: 0, y: -41)
        }
        .frame(width: 375, height: 667)
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
