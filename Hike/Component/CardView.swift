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
                        [.customGrayLight,
                        .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                            )
                        Spacer()
                        Button{
                            
                        }label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for freinds and families.")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .italic()
                        .foregroundColor(.customGrayMedium)
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
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight,.customGreenDark], startPoint: .top, endPoint: .bottom ))
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
