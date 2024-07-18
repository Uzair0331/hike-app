//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by App Tycoons on 15/07/2024.
//

import Foundation
import SwiftUI

struct GradientButton : ButtonStyle{
    func makeBody(configuration : Configuration) -> some View {
    configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                configuration.isPressed ?
                LinearGradient(
                    colors:
                        [.customGrayLight,
                         .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom)
                :
                    LinearGradient(
                        colors:
                            [.customGrayMedium,
                             .customGrayLight],
                        startPoint: .top,
                        endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
