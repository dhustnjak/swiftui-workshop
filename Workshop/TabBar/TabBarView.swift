//
//  TabBarView.swift
//  Workshop
//
//  Created by Domagoj Hustnjak on 11/9/23.
//

import SwiftUI

struct TabBarView: View {

    let profile: Profile

    var body: some View {
        TabView {
            MyWorkoutsView()
                .tabItem { Label("Workouts", systemImage: "list.dash") }
            ProfileView(profile: profile)
                .tabItem { Label("Profile", systemImage: "person") }
        }
        .tint(.limeGreen)
        .navigationBarBackButtonHidden()
    }
}
