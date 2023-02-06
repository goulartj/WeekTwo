//
//  ContentView.swift
//  WeekTwo
//
//  Created by John Goulart on 1/30/23.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var lastSoundNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    
    
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
                        let messages = ["You Are Awesome!",
                                        "You Are Great!",
                                        "You Are Fantastic!",
                                        "Fabulous? That's You!"]
                        
                        lastMessageNumber = nonRepeatingRandom(lastNumber: lastMessageNumber, upperBound: messages.count-1)
                        messageString = messages[messageNumber]
                        
                        lastImageNumber = nonRepeatingRandom(lastNumber: lastImageNumber, upperBound: 9)
                        imageName = "image\(lastImageNumber)"
                        
                        lastSoundNumber = nonRepeatingRandom(lastNumber: lastSoundNumber, upperBound: 5)
                        playSound(soundName: "sound\(lastSoundNumber)")
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
        }
    }
    
    func nonRepeatingRandom(lastNumber: Int, upperBound:Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperBound)
        } while newNumber == lastNumber
        return newNumber
    }
    
    func playSound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("😡 Could not read file names \(soundName)")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("😡 Error: \(error.localizedDescription) creating audio.Player.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
