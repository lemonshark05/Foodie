//
//  HomePageView.swift
//  Foodie
//
//  Created by lemonshark on 2023/4/25.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        ZStack {
            Image("1")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Text("Welcome to My App")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
                
                HStack(spacing: 20) {
                    NavigationLink(destination: LoginView()) {
                        Text("Login")
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .tracking(0.52)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            .padding(.top, 19)
                            .padding(.bottom, 18)
                            .frame(maxWidth: 150)
                            .foregroundColor(.black)
                            .background(Color(red: 1, green: 0.79, blue: 0.48))
                            .cornerRadius(6)
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color(red: 1, green: 0.79, blue: 0.48), lineWidth: 2))
                    }
                    
                    NavigationLink(destination: SignupView()) {
                        Text("Sign Up")
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .tracking(0.52)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            .padding(.top, 19)
                            .padding(.bottom, 18)
                            .frame(maxWidth: 150)
                            .foregroundColor(.black)
                            .background(Color(red: 1, green: 0.79, blue: 0.48))
                            .cornerRadius(6)
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color(red: 1, green: 0.79, blue: 0.48), lineWidth: 2))
                    }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
