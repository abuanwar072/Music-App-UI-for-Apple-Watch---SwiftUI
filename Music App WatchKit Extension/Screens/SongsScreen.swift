//
//  SongsScreen.swift
//  Music App WatchKit Extension
//
//  Created by Abu Anwar MD Abdullah on 9/2/21.
//

import SwiftUI

struct SongsScreen: View {
    var body: some View {
        ScrollView {
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "Selena Gomez"))
                    .resizable()
                    .aspectRatio(1.76,contentMode: .fill)
                    
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)), Color(#colorLiteral(red: 0.0862745098, green: 0.0862745098, blue: 0.0862745098, alpha: 0.3)), Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                
                VStack {
                    Spacer()
                    
                    Text("selena gomez".uppercased())
                        .font(.system(size: 10))
                        .fontWeight(.bold)

                    Text("POPULER")
                        .font(.system(size: 7))
                        .fontWeight(.bold)
                }
                .padding(.bottom, 4)
            }
            .cornerRadius(10.0)
            
            ForEach(0 ..< songs.count) { i in
                SongCardView(song: songs[i], serialNumber: i+1)
            }
            .padding(.top, 4)
            
                
                
        }
    }
}

struct SongsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SongsScreen()
    }
}

struct SongCardView: View {
    let song: Song
    let serialNumber: Int
    var body: some View {
        HStack {
            Text("\(serialNumber)")
                .fontWeight(.medium)
                .padding(.trailing, 4)
            
            Text(song.name)
                .fontWeight(.medium)
            
            Spacer()
            
            Text("\(song.duration) min")
                .fontWeight(.medium)
        }
        .font(.system(size: 8))
        .padding()
        .background(Color(#colorLiteral(red: 0.1960784314, green: 0.1960784314, blue: 0.1960784314, alpha: 1)))
        .cornerRadius(8.0)
    }
}
