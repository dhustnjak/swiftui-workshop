//
//  FocusedTextFieldModifier.swift
//  Workshop
//
//  Created by Domagoj Hustnjak on 11/2/23.
//

import SwiftUI

private struct FocusedTextFieldModifier: ViewModifier {

    @FocusState private var isFocused: Bool

    let focusOnAppear: Bool

    func body(content: Content) -> some View {
        content
            .focused($isFocused)
            .onAppear { isFocused = focusOnAppear }
    }
}

extension View {

    func focus(onAppear: Bool) -> some View {
        return modifier(FocusedTextFieldModifier(focusOnAppear: onAppear))
    }
}
