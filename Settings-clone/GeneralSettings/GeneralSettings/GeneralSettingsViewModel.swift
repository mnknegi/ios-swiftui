//
//  GeneralSettingsViewModel.swift
//  GeneralSettings
//
//  Created by Mayank Negi on 03/09/24.
//

import Foundation
import SwiftUI

struct GeneralSettingsModel: Hashable {
    let title: String
    var canNavigate: Bool = true
    var textColor: Color = .black
}

final class GeneralSettingsViewModel {

    let sections = [
        [GeneralSettingsModel(title: "About"), GeneralSettingsModel(title: "Software Update")],
        [GeneralSettingsModel(title: "AppleCare & Warranty")],
        [GeneralSettingsModel(title: "AirDrop"), GeneralSettingsModel(title: "AirPlay & Handoff"), GeneralSettingsModel(title: "Picture in Picture"), GeneralSettingsModel(title: "CarPlay")],
        [GeneralSettingsModel(title: "iPhone Storage"), GeneralSettingsModel(title: "Background App Refresh")],
        [GeneralSettingsModel(title: "Date & Time"), GeneralSettingsModel(title: "Keyboard"), GeneralSettingsModel(title: "Fonts"), GeneralSettingsModel(title: "Language & Region"), GeneralSettingsModel(title: "Dictionary")],
        [GeneralSettingsModel(title: "VPN & Device Management")],
        [GeneralSettingsModel(title: "Legal & Regulatory")],
        [GeneralSettingsModel(title: "Transfer or Reset iPhone"), GeneralSettingsModel(title: "Shut Down", canNavigate: false, textColor: .blue)]
    ]
}
