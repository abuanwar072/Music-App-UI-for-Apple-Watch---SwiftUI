//
//  HomeScreen.swift
//  Music App WatchKit Extension
//
//  Created by Abu Anwar MD Abdullah on 8/2/21.
//

import SwiftUI

    let columns = [GridItem(.adaptive(minimum: 45), spacing: 8)]

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ZStack {
                        TopArtistsView()
                        NavigationLink(
                            destination: ArtistScreen(),
                            label: {})
                            .opacity(0.05)
//                        TopArtistsView()
                    }
                    
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(musics, id: \.self) { item in
                            ZStack {
                                MusicCardView(music: item)
                                NavigationLink(
                                    destination: SongsScreen().navigationTitle(""),
                                    label: {})
                                    .opacity(0.05)
                                
                            }
                        }
                    }
                    
                }
            }
        }
        .navigationTitle("Music")
    }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}


struct MusicCardView: View {
    let music: Music
    
    var body: some View {
        ZStack {
            Image(music.poster)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(10.0)
                .opacity(0.75)
            
            Text(music.artistName)
                .font(.system(size: 7))
                .fontWeight(.bold)
        }
    }
}

struct TopArtistsView: View {
    var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "top_atrist"))
                .resizable()
                .opacity(0.5)
                .cornerRadius(10.0)
                .frame(maxWidth: .infinity, maxHeight: 33)
            HStack {
                Image("star")
                Text("Best Artist")
                    .font(.system(size: 10))
                    .fontWeight(.bold)
                    .padding(.horizontal, 4)
                Spacer()
                Image("play")
            }
            .padding(.horizontal, 16)
        }
//        .padding(.bottom)
    }
}
