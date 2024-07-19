//
//  SettingView.swift
//  Hike
//
//  Created by App Tycoons on 18/07/2024.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List{
            HStack{
                Spacer()
                Image(systemName: "laurel.leading")
                    .font(
                        .system(
                            size: 80,weight: .black)
                    )
                
                VStack(spacing : -10) {
                    Text("HIKE")
                        .font(
                            .system(
                                size: 66,weight: .black)
                        )
                    Text("Editor's choice")
                        .fontWeight(.medium)
                    
                }
                
                Image(systemName: "laurel.trailing")
                    .font(
                        .system(
                            size: 80,weight: .black)
                    )
                Spacer()
            }
            .listRowSeparator(.hidden)

            .foregroundStyle(
                LinearGradient(
                    colors:
                        [.customDarkBlueColor,
                         .customPurpleColor,
                         .customBlueColor],
                    startPoint: .top,
                    endPoint: .bottom)
            )
            VStack{
                Text("where you find \n perfect tracks ?")
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Text("The Hike which looks gorgeous in photos but is even better once you are actually here. The hike that you hope do again someday. Find the best day hikes in the app")
                    .italic()
                    .font(.footnote)
                
                Text("Dust off the boots! It's time for a walk")
                    .fontWeight(.heavy)
                    .foregroundColor(.customPurpleColor)
            }
            
            .multilineTextAlignment(.center)
            .padding(.bottom,16)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            
            
            Section(
                
                header:
                    Text("ABOUT THE APP"),
                
                
                footer:
                    HStack{
                        Spacer()
                        Text("Copyright @ All right reserved")
                        Spacer()
                    }
                    .padding(.vertical,6)
                    
            )
            {
                CustomList(
                    rowLabel: "Application",
                    rowIcon: "apps.iphone",
                    rowContent: "HIKE",
                    rowTintColor: .blue
                )

                CustomList(
                    rowLabel: "Compatibilty",
                    rowIcon: "info.circle",
                    rowContent: "iOS,iPadOS",
                    rowTintColor: .red)
                
                CustomList(
                    rowLabel: "Technology",
                    rowIcon: "swift",
                    rowContent: "Swift",
                    rowTintColor: .orange)
                
                CustomList(
                    rowLabel: "Version",
                    rowIcon: "gear",
                    rowContent: "0.1",
                    rowTintColor: .purple)
                
                CustomList(
                    rowLabel: "Developer",
                    rowIcon: "ellipsis.curlybraces",
                    rowContent: "Uzair Shaikh",
                    rowTintColor: .mint)
                
                CustomList(
                    rowLabel: "Website",
                    rowIcon: "globe",
                    rowContent: nil,
                    rowTintColor: .pink,
                    rowLinkLabel: "uzairshaikh.netlify",
                    rowLinkDestination: "https://uzairshaikh.netlify.app/")
            }
        }
        
        .listRowSeparator(.hidden)
        
        
    }
      
}

#Preview {
    SettingView()
        
}
