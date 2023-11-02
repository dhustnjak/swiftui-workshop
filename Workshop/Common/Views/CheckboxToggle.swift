//
//  CheckboxToggle.swift
//  Workshop
//
//  Created by Domagoj Hustnjak on 11/2/23.
//

import SwiftUI

struct CheckboxToggle: View {

    @Binding var isOn: Bool

    let title: String

    var body: some View {
        Toggle(title, isOn: $isOn)
            .toggleStyle(CheckboxToggleStyle())
            .padding(20)
    }
}

private struct CheckboxToggleStyle: ToggleStyle {

    func makeBody(configuration: Configuration) -> some View {
        return HStack(spacing: 0) {
            configuration.label
            Spacer(minLength: 10)
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.blue)
                .onTapGesture { configuration.isOn.toggle() }
        }
    }
}
