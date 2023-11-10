//
//  MyWorkoutsView.swift
//  Workshop
//
//  Created by Domagoj Hustnjak on 11/9/23.
//

import SwiftUI

struct MyWorkoutsView: View {

    @State private var workouts: [Workout] = []

    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 50) {
                    HeaderView(title: "Summary")
                    VStack(spacing: 10) {
                        ForEach(workouts) { WorkoutView(workout: $0, onTap: removeWorkout) }
                    }
                    Spacer(minLength: 10)
                    PrimaryButton(title: "Add workout", action: { workouts.append(.random()) })
                }
                .padding(16)
                .frame(minHeight: geometry.size.height)
                .animation(.default, value: workouts)
            }
        }
    }
}

private extension MyWorkoutsView {

    func removeWorkout(withId id: UUID) {
        workouts.removeAll(where: { $0.id == id })
    }
}

#Preview {
    MyWorkoutsView()
}
