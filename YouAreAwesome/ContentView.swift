//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by John Goulart on 1/23/23.
//
//Ready for submission

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.yellow)
                .padding()
            
            HStack {
                Button("Awesome") {
                    //This is the action performed when the button is pressed
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
