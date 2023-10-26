//
//  ProfileView.swift
//  Workshop
//
//  Created by Domagoj Hustnjak on 10/26/23.
//

import SwiftUI

struct ProfileView: View {

    let profile: Profile

    var body: some View {
        VStack(spacing: 50) {
            HeaderView(date: .now, title: "Your details", profileImage: profile.image)
            VStack(spacing: 20) {
                DescriptionView(title: "Name", value: profile.name)
                DescriptionView(title: "DoB", value: profile.birth)
                DescriptionView(title: "Current weight", value: profile.weight)
            }
            Spacer()
        }
        .padding()
    }
}

private struct DescriptionView: View {

    let title: String
    let value: String

    var body: some View {
        HStack(spacing: 0) {
            Text(title)
            Spacer()
            Text(value)
        }
        .font(.headline)
    }
}

#Preview {
    ProfileView(profile: .preview)
}
