//
//  CardView.swift
//  Hike
//
//  Created by App Tycoons on 15/07/2024.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber : Int = 1
    @State private var randomNumber : Int = 1
    @State private var isShowingSheet : Bool = false
    func randomImage(){
        repeat{
            randomNumber = Int.random(in: 1...5)
        }while randomNumber  == imageNumber
        
       
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack{
            customBackgroundView()
            
            VStack{
                
                VStack(
                    alignment: . leading)
                {
                HStack{
                      
                    Text("Hiking.")
                        .fontWeight(.black)
                        .font(.system(size: 52))
                        .foregroundStyle(
                        LinearGradient(
                        colors:
                        [.customDarkBlueColor,
                        .customPurpleColor],
                        startPoint: .top,
                        endPoint: .bottom)
                            )
                        Spacer()
                        Button{
                            isShowingSheet.toggle()
                        }label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for freinds and families.....")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .italic()
                        .foregroundStyle(
                            LinearGradient(
                                colors:
                                    [.customDarkBlueColor,
                                     .customPurpleColor],
                                     startPoint: .top,
                                    endPoint: .bottom))
                }
                .padding(.horizontal,30)
                
                ZStack{
                   CustomCircle()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                }
                Button{
                    randomImage()
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors:
                                [.customBlueColor,
                                .customPurpleColor],
                                startPoint: .top,
                                endPoint: .bottom )
                        )
                }
                .buttonStyle(GradientButton())
            }
        }
        .frame(width: 320,height: 570)
    }
}

#Preview {
    CardView()
}
