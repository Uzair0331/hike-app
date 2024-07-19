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
    @State var rowContent : String? = nil
    @State var rowTintColor : Color
    @State var rowLinkLabel : String? = nil
    @State var rowLinkDestination : String? = nil
    var body: some View {
        LabeledContent{
            
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                .fontWeight(.heavy)
            } else if(rowLinkLabel != nil &&
            rowLinkDestination != nil){
                Link(rowLinkLabel!, destination: URL(string:
                     rowLinkDestination!)!)
                .foregroundColor(.customPurpleColor)
                .fontWeight(.heavy)
            }
            else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
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
        rowLabel: "Website",
        rowIcon: "globe",
        rowContent: nil,
        rowTintColor: .pink,
        rowLinkLabel: "uzairshaikh.netlify",
        rowLinkDestination: "https://uzairshaikh.netlify.app/")
        
    }
    
}
