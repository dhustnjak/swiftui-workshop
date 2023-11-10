//
//  Profile.swift
//  Workshop
//
//  Created by Domagoj Hustnjak on 10/26/23.
//

import Foundation

struct Profile: Hashable {

    let name: String
    let birth: String
    let image: String
    let weight: String

    init(name: String,
         birth: String = "Infinity",
         image: String = "profile",
         weight: String = "Lightweight"
    ) {
        self.name = name
        self.birth = birth
        self.image = image
        self.weight = weight
    }
}

extension Profile {

    static var preview: Self {
        return .init(name: "Paul Hudson")
    }
}
