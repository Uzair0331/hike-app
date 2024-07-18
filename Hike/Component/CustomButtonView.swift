//
//  CustomButtonView.swift
//  Hike
//
//  Created by App Tycoons on 15/07/2024.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill()
                .fill(
                    LinearGradient(
                    colors: [.white,
                            .customBlueColor,
                            .customPurpleColor],
                            startPoint: .top,
                            endPoint: .bottom)
                )
                Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .customDarkBlueColor,
                            .customGrayMedium],
                            startPoint: .top,
                            endPoint: .bottom)
                            ,lineWidth: 4)
            Image(
                systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customDarkBlueColor],
                    startPoint: .top,
                    endPoint: .bottom)
                )
        }
        .frame(width: 50,height: 50)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
