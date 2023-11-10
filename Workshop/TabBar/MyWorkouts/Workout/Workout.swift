//
//  Workout.swift
//  Workshop
//
//  Created by Domagoj Hustnjak on 11/9/23.
//

import Foundation

struct Workout: Identifiable, Equatable {

    let id: UUID = .init()

    let title: String
    let date: String
    let duration: String
    let image: String
}

extension Workout {

    static func random() -> Self {
        let (title, _) = titlesAndSymbols.randomElement()!
        let date = randomDate()
        let duration = randomDuration()
        return Workout(title: title, date: date, duration: duration, image: "workout")
    }
}

private extension Workout {

    static func randomDate() -> String {
        let day: Int = .random(in: 1...31)
        let month: Int = .random(in: 1...12)
        let year: Int = .random(in: 22...24)
        return "\(day)/\(month)/\(year)"
    }

    static func randomDuration() -> String {
        let minutes: Int = .random(in: 0...59)
        let tens: Int = .random(in: 0...5)
        let ones: Int = .random(in: 0...9)
        return "\(minutes):\(tens)\(ones)"
    }

    static let titlesAndSymbols = [
        ("Playing Baseball", "baseball.fill"),
        ("Playing Basketball", "basketball.fill"),
        ("Swimming in Open Water", "figure.open.water.swim"),
        ("Hiking", "figure.hiking"),
        ("Running", "figure.run"),
        ("Mind and Body", "figure.mind.and.body"),
        ("Traditional Strength Training", "figure.strengthtraining.traditional"),
    ]
}
