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
            HeaderView(title: "Your details")
            VStack(spacing: 20) {
                DescriptionView(title: "Name", value: profile.name)
                DescriptionView(title: "DoB", value: profile.birth)
                DescriptionView(title: "Current weight", value: profile.weight)
            }
            Spacer(minLength: 10)
        }
        .padding(16)
    }
}

private struct DescriptionView: View {

    let title: String
    let value: String

    var body: some View {
        HStack(spacing: 0) {
            Text(title)
            Spacer(minLength: 10)
            Text(value)
        }
        .font(.headline)
    }
}

#Preview {
    ProfileView(profile: .preview)
}
