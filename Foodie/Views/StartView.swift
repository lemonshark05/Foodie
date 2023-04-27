//
//  StartView.swift
//  Foodie
//
//  Created by lemonshark on 2023/4/26.
//

import SwiftUI

struct StartView: View {
    var score: Int
    @State private var animate = [Bool](repeating: false, count: 5)
        
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: geometry.size.width * 0.02) {
                ForEach(0..<5) { index in
                    Image(systemName: index < score ? "star.fill" : "star")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color(red: 1, green: 0.85, blue: 0.3))
                        .frame(width: geometry.size.width * 0.15, height: geometry.size.height * 0.6)
                        .scaleEffect(animate[index] ? 1.0 : 0.7)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 + Double(index) * 0.2) {
                                withAnimation(
                                    Animation.easeInOut(duration: 0.5)
                                ) {
                                    animate[index] = true
                                }
                            }
                        }
                }
            }
            .padding(.horizontal, geometry.size.width * 0.1)
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(score: 3)
    }
}
