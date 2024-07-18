//
//  ContentView.swift
//  Hike
//
//  Created by App Tycoons on 15/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.customGreenLight,Color.customGrayLight], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            CardView()
        }
   
    }
}

#Preview {
    ContentView()
    
}
