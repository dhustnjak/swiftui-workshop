//
//  WorkoutView.swift
//  Workshop
//
//  Created by Domagoj Hustnjak on 11/9/23.
//

import SwiftUI

struct WorkoutView: View {

    let workout: Workout
    let onTap: (UUID) -> Void

    var body: some View {
        HStack(spacing: 9) {
            Image(workout.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 48, height: 48)
            VStack(alignment: .leading, spacing: 4) {
                Text(workout.title)
                    .foregroundStyle(.white)
                HStack(alignment: .lastTextBaseline, spacing: 0) {
                    Text(workout.duration)
                        .font(.largeTitle)
                        .foregroundStyle(.limeGreen)
                    Spacer(minLength: 10)
                    Text(workout.date)
                        .font(.callout)
                        .foregroundStyle(.gray)
                    Image("chevron")
                        .padding(.leading, 4)
                }
            }
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 12)
        .background(.darkGray)
        .clipShape(.rect(cornerRadius: 10))
        .onTapGesture { onTap(workout.id) }
    }
}
