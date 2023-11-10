//
//  HeaderView.swift
//  Workshop
//
//  Created by Domagoj Hustnjak on 10/26/23.
//

import SwiftUI

struct HeaderView: View {

    let title: String

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(Date.now.formatted)
                .textCase(.uppercase)
                .foregroundStyle(.gray)
                .font(.caption)
            HStack(spacing: 0) {
                Text(title).font(.largeTitle)
                Spacer(minLength: 10)
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 36, height: 36)
                    .clipShape(.rect(cornerRadius: 50))
            }
        }
    }
}

private extension Date {

    var formatted: String {
        let style = FormatStyle()
            .month(.abbreviated)
            .day(.twoDigits)
            .weekday(.wide)

        return formatted(style)
    }
}
