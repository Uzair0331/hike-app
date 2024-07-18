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
            Color.customPurpleColor
                .cornerRadius(40)
                .offset(y:12)
            // MARK : - 2. LIGHT
            Color.customBlueColor
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
            // MARK : - 1. SURFACE
            
            LinearGradient(colors: [Color.customBlueColor,Color.customPurpleColor], startPoint: .top, endPoint: .bottom)
                .cornerRadius(40)
        }
        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
    }
}

#Preview {
    customBackgroundView()
        .padding( )
}
