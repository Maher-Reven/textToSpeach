//
//  ContentView.swift
//  textToSpeach
//
//  Created by Maher on 13/12/2022.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var name : String = ""
    var body: some View {
        VStack {
         TextField("Name", text: $name)
        }
        .padding()

        Button("Say hi to") {
            let utterance =  AVSpeechUtterance(string: "Hello \(name)")
            utterance.voice = AVSpeechSynthesisVoice(language: "en-AU")
            utterance.rate = 0.3

            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(utterance)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
