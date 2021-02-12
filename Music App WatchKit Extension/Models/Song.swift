//
//  Song.swift
//  Music App WatchKit Extension
//
//  Created by Abu Anwar MD Abdullah on 9/2/21.
//

struct Song: Hashable {
    let name: String
    let duration: Int
}

let songs = [
    Song(name: "Same old love", duration: 3),
    Song(name: "Feel me", duration: 4),
    Song(name: "Wolves", duration: 3),
    Song(name: "Lose you to love me", duration: 5),
    Song(name: "Good for you", duration: 4),
    Song(name: "Feel me", duration: 3),
]
