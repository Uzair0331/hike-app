//
//  CustomCircle.swift
//  Hike
//
//  Created by App Tycoons on 18/07/2024.
//

import SwiftUI

struct CustomCircle: View {
    @State private var isAnimatedGradient : Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                LinearGradient(
                colors: [
                    .customBlueColor,
                    .customDarkBlueColor,],
                startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing
                )
                )
                .onAppear{
                    withAnimation(
                        .linear(
                            duration: 3.0)
                        .repeatForever(
                            autoreverses: true)
                    )
                    {
                        isAnimatedGradient .toggle()
                    }
                }
            MotionAnimationView()
            
        }
        .frame(width: 256,height: 256)
    }
}

#Preview {
    CustomCircle()
}
