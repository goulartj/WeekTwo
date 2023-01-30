//
//  ContentView.swift
//  WeekTwo
//
//  Created by John Goulart on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = " "
    @State private var imageName = ""
    
    var body: some View {
     
            VStack {
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    .padding()
                    
                Spacer()
                    
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .padding()
                    
                Spacer()
                    
                HStack {
                    Button("Show Message") {
                        let message1 = "You Are Awesome!"
                        let message2 = "You Are Great!"
//                        if messageString == message1 {
//                            messageString = message2
//                        } else {
//                            messageString = message1
//                        }
                        messageString = (messageString == message1 ? message2 : message1)
                        imageName = (imageName == "image0" ? "image1" : "image0")
                            
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
