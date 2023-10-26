//
//  Profile.swift
//  Workshop
//
//  Created by Domagoj Hustnjak on 10/26/23.
//

import Foundation

struct Profile {
    let name: String
    let birth: String
    let image: String
    let weight: String
}

extension Profile {

    static var preview: Self {
        return .init(
            name: "Paul Hudson",
            birth: "Infinity",
            image: "profile",
            weight: "Lightweight"
        )
    }
}
