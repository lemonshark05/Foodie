//
//  RestaurantView.swift
//  Foodie
//
//  Created by lemonshark on 2023/4/26.
//

import SwiftUI
import MapKit

struct RestaurantView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, annotationItems: [RestaurantAnnotation(coordinate: CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437))]) { annotation in
                MapAnnotation(coordinate: annotation.coordinate) {
                    Image("custom-marker") // Replace "custom-marker" with the name of your image asset
                        .resizable()
                        .scaledToFit()
                }
            }
            .ignoresSafeArea()
            .offset(x: 0, y: 110)
            .frame(height: 216)
            
            Ellipse()
                .fill(Color.clear) // Use clear color so the image will be visible
                .overlay(
                    Image("Sushi") // Replace "01" with the name of your image asset
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipShape(Ellipse())
                )
                .offset(x: 0.50, y: -280)

            Text("Sushi Gen")
                .font(.largeTitle)
                .offset(x: 0.50, y: -160)

            Text("LOS ANGELES, CA")
                .fontWeight(.black)
                .font(.footnote)
                .tracking(0.52)
                .offset(x: 0, y: -120)
            
            StartView(score: 3)
                .frame(width: 200, height: 50) // Resize StartView
                .tracking(0.52)
                .offset(x: 0, y: -90)

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
                .offset(x: 0, y: -40)
        }
        .frame(width: 375, height: 667)
    }
}

struct RestaurantAnnotation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}
