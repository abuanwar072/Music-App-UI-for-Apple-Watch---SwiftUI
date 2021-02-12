//
//  ArtistScreen.swift
//  Music App WatchKit Extension
//
//  Created by Abu Anwar MD Abdullah on 8/2/21.
//

import SwiftUI



struct ArtistScreen: View {
    let columns = [GridItem(.adaptive(minimum: 45), spacing: 8)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 8) {
                    ForEach(artists, id: \.self) { item in
                        ZStack {
                            ArtistCardView(artist: item)
                            NavigationLink(
                                destination: SongsScreen().navigationTitle(""),
                                label: {})
                                .opacity(0.1)
                        }
                        
                    }
                }
            }
        }
        .navigationTitle("Artist")
    }
}

struct ArtistScreen_Previews: PreviewProvider {
    static var previews: some View {
        ArtistScreen()
    }
}

struct ArtistCardView: View {
    let artist: Artist
    
    var body: some View {
        VStack {
            Image(artist.image)
                .resizable()
                .cornerRadius(5.0)
                .aspectRatio(contentMode: .fill)
            
            Text(artist.name)
                .font(.system(size: 7))
                .fontWeight(.bold)
                .padding(.top, 2)
            
        }
    }
}
