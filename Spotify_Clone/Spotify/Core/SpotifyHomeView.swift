//
//  SpotifyHomeView.swift
//  Spotify_Clone
//
//  Created by Kostas Koliolios on 18/05/2024.
//

import SwiftUI

struct SpotifyHomeView: View {
    
    @State private var currentUser: User? = nil
    
    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()
            
            HStack {
                if let currentUser{
                    
                    
                    ImageLoaderView(urlString: currentUser.image)
                        .frame(width: 30, height: 30)
                        .background(.spotifyWhite)
                        .clipShape(Circle())
                        .onTapGesture {
                            
                        }
                }
                
                    ScrollView(.horizontal) {
                        HStack(spacing: 8) {
                            ForEach(0..<20) { _ in
                            Rectangle()
                                    .frame(width: 10, height: 10)
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                }
            }
            .task {
                await getData()
            }
        }
    
    
    private func getData() async {
        do {
            currentUser = try await DatabaseHelper().getUsers().first
//            products = try await DatabaseHelper().getProducts()
        } catch {
            
        }
    }
}

#Preview {
    SpotifyHomeView()
}
