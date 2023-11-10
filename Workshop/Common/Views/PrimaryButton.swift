//
//  PrimaryButton.swift
//  Workshop
//
//  Created by Domagoj Hustnjak on 11/2/23.
//

import SwiftUI

struct PrimaryButton: View {

    let title: String
    let action: () -> Void

    var body: some View {
        Button(title, action: action).buttonStyle(PrimaryButtonStyle())
    }
}

private struct PrimaryButtonStyle: ButtonStyle {

    @Environment(\.isEnabled) private var isEnabled

    func makeBody(configuration: Configuration) -> some View {
        return configuration
            .label
            .foregroundColor(.black)
            .fontWeight(.semibold)
            .padding(16)
            .frame(maxWidth: .infinity)
            .background(.limeGreen)
            .opacity(isEnabled ? 1 : 0.5)
            .clipShape(.rect(cornerRadius: 14))
            .scaleEffect(.init(configuration.isPressed ? 0.97 : 1))
    }
}
