//
//  customBackgroundView.swift
//  Hike
//
//  Created by App Tycoons on 15/07/2024.
//

import SwiftUI

struct customBackgroundView: View {
    var body: some View {
        ZStack{
            // MARK : - 3. DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y:12)
            // MARK : - 2. LIGHT
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
            // MARK : - 1. SURFACE
            
            LinearGradient(colors: [Color.customGreenLight,Color.customGreenMedium], startPoint: .top, endPoint: .bottom)
                .cornerRadius(40)
        }
    }
}

#Preview {
    customBackgroundView()
        .padding( )
}
