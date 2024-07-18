//
//  CustomList.swift
//  Hike
//
//  Created by App Tycoons on 18/07/2024.
//

import SwiftUI

struct CustomList: View {
    @State var rowLabel : String
    @State var rowIcon : String
    @State var rowContent : String
    @State var rowTintColor : Color
    var body: some View {
        LabeledContent{
        Text(rowContent)
                .foregroundColor(.primary)
                .fontWeight(.heavy)
        } label:{
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30,height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)}
           
        }
    }
}

#Preview {
    List{CustomList(
        rowLabel: "Designer",
        rowIcon: "paintpalette",
        rowContent: "John Doe",
        rowTintColor: .pink)
        
    }
    
}
