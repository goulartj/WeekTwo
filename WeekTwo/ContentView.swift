//
//  ContentView.swift
//  WeekTwo
//
//  Created by John Goulart on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar needs help, they call you!"
    
    var body: some View {
     
        GeometryReader {geometry in
            VStack {
                
                Group {
                    Text("I am a Text View!")
                    Text("I am a Text View!")
                    Text("I am a Text View!")
                    Text("I am a Text View!")
                    Text("I am a Text View!")
                    Text("I am a Text View!")
                    Text("I am a Text View!")
                    Text("I am a Text View!")
                }
                .font(.title)
                .fontWeight(.heavy)
                
                Text("You Have Skills!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color("BC-Gold"))
                    .padding()
                    .background(Color("BC-Maroon"))
                    .cornerRadius(15)
                    
                Spacer()
                    
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
    //              .border(.orange, width: 1)
                    .padding()
                    
                Spacer()
                
                Divider()
                    .background(.black)
                    .padding()
                    .frame(width: 150.0)
                
                Rectangle()
                    .fill(.indigo)
                    .frame(width: geometry.size.width * (2/3), height: 1)
                    
                HStack {
                    Button("Awesome") {
                        messageString = "You Are Awesome!"
                    }
                    .buttonStyle(.borderedProminent)
                        
                    Spacer()
                        
                    Button("Great") {
                        messageString = "You Are Great!"
                    }
                    .buttonStyle(.borderedProminent)
                }
    //              .border(.purple, width: 5)
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
