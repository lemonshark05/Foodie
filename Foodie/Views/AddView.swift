//
//  AddView.swift
//  Foodie
//
//  Created by lemonshark on 2023/4/27.
//

import SwiftUI

struct AddView: View {
    @State private var commentText: String = ""
    @State private var comments: [String] = []
    @State private var itemText: String = ""
    @State private var items: [String] = []
    
    var body: some View {
        VStack(spacing: 10) {
            Ellipse()
                .fill(Color.clear) // Use clear color so the image will be visible
                .overlay(
                    Image("Sushi") // Replace "01" with the name of your image asset
                        .resizable()
                        .scaledToFill()
                        .frame(width: 160, height: 160)
                        .clipShape(Ellipse())
                )

            Text("Sushi Gen")
                .font(.largeTitle)

            StartView(score: 3)
                .frame(width: 200, height: 50) // Resize StartView
                .tracking(0.52)

            Text("Photo")
                .fontWeight(.black)
                .padding(.vertical, 18)
                .padding(.horizontal, 16)
                .frame(width: 343, height: 52)
                .background(Color(red: 0.99, green: 0.79, blue: 0.49))
                .cornerRadius(6)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(red: 0.99, green: 0.79, blue: 0.49), lineWidth: 2)
                )
            
            VStack {
                // Comment Section
                Text("Comments")
                    .font(.title2)
                    .padding(.top)

                TextField("Add your comment here...", text: $commentText)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(6)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .padding(.horizontal)

                Button(action: {
                    comments.append(commentText)
                    commentText = ""
                }) {
                    Text("Submit")
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                        .background(Color(red: 1, green: 0.79, blue: 0.48))
                        .foregroundColor(.black)
                        .cornerRadius(6)
                }

                List(comments, id: \.self) { comment in
                    Text(comment)
                }


                List(items, id: \.self) { item in
                    Text(item)
                }
            }
            .padding(.bottom)
        }
        .frame(width: 375)
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
