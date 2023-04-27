//
//  SearchView.swift
//  Foodie
//
//  Created by lemonshark on 2023/4/26.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var searchResults: [String] = [] // Assuming search results are image names

    private let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 100), spacing: 10)
    ]

    var body: some View {
        VStack(spacing: 11.55) {
            Group {
                Text("Search")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .frame(width: 148, height: 40)

                HStack {
                    TextField("Enter a search term", text: $searchText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.leading, 10)

                    Button(action: {
                        performSearch()
                    }) {
                        Text("go")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .frame(minWidth: 25, maxWidth: 30)
                            .padding()
                            .background(Color(red: 1, green: 0.79, blue: 0.48))
                    }
                }
                .frame(width: 343, height: 52)
                .background(Color.white)
                .border(Color(red: 0.30, green: 0.20, blue: 0.14), width: 2)
                .padding(.horizontal, 16)
                .padding(.bottom, 10)

                Text("ALL RESULTS")
                    .fontWeight(.black)
                    .font(.footnote)
                    .tracking(0.52)
            }

            if !searchResults.isEmpty {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 5) {
                        ForEach(searchResults, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(minWidth: 100, minHeight: 100)
                                .cornerRadius(5)
                                .clipped()
                        }
                    }
                    .padding()
                }
            }
            else {
                Spacer()
            }

        }
        .padding(.top, 21)
        .frame(maxWidth: 375, maxHeight: .infinity)
        .frame(width: 375, height: 812)
        .background(Color.white)
    }

    private func performSearch() {
        // Replace with your actual search logic
        searchResults = ["Image 1", "Image 2", "Image 3", "Image 4", "Image 5", "Image"]
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
