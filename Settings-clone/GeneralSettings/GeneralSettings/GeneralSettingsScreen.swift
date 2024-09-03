//
//  GeneralSettingsScreen.swift
//  GeneralSettings
//
//  Created by Mayank Negi on 03/09/24.
//

import SwiftUI

struct GeneralSettingsScreen: View {

    let viewModel = GeneralSettingsViewModel()

    var body: some View {
        NavigationStack {
            Form {
                ForEach(viewModel.sections, id: \.self) { section in
                    Section {
                            ForEach(section, id: \.self) { item in

                                if item.canNavigate {
                                    NavigationLink(value: item) {
                                        Text(item.title)

                                    }
                                } else {
                                    Text(item.title)
                                        .foregroundStyle(item.textColor)
                                }
                            }
                    }
                }
            }
            .navigationTitle("General")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    GeneralSettingsScreen()
}
