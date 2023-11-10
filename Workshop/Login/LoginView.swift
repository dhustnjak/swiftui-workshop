//
//  LoginView.swift
//  Workshop
//
//  Created by Domagoj Hustnjak on 11/2/23.
//

import SwiftUI

struct LoginView: View {

    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var rememberMe: Bool = true
    @State private var termsAccepted: Bool = false

    @State private var profile: Profile?

    var body: some View {
        VStack(spacing: 50) {
            HeaderView(title: "Welcome")
            VStack(spacing: 20) {
                LoginTextField(input: $firstName, title: "First name", placeholder: "Paul", focusOnAppear: true)
                LoginTextField(input: $lastName, title: "Last name", placeholder: "Hudson")
                Toggle("Remember me", isOn: $rememberMe)
            }
            Spacer(minLength: 10)
            VStack(spacing: 0) {
                CheckboxToggle(isOn: $termsAccepted, title: "I accept terms and conditions")
                PrimaryButton(title: "Login", action: { profile = .init(name: "\(firstName) \(lastName)") })
                    .disabled(!validated())
                    .navigationDestination(item: $profile, destination: { TabBarView(profile: $0) })
            }
        }
        .padding(16)
        .preferredColorScheme(.dark)
    }
}

private extension LoginView {

     func validated() -> Bool {
        return termsAccepted && !firstName.isEmpty && !lastName.isEmpty
    }
}

private struct LoginTextField: View {

    @Binding var input: String

    let title: String
    let placeholder: String
    var focusOnAppear: Bool = false

    var body: some View {
        HStack(spacing: 10) {
            Text(title)
            TextField(placeholder, text: $input)
                .multilineTextAlignment(.trailing)
                .focus(onAppear: focusOnAppear)
        }
        Divider()
    }
}

#Preview {
    LoginView()
}

