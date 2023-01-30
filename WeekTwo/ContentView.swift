//
//  ContentView.swift
//  WeekTwo
//
//  Created by John Goulart on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste"
    
    var body: some View {
     
        GeometryReader {geometry in
            VStack {
                    
                Spacer()
                
                Image(systemName: "speaker.wave.3", variableValue: 0.0)
                    .resizable()
                    .scaledToFit()
                    .symbolRenderingMode(.multicolor)
                    .padding()
                    .background(Color(hue: 0.524, saturation: 0.315, brightness: 0.954))
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 30, x: 20, y: 20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(.red, lineWidth: 1)
                    )
                    .padding()
                    
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
