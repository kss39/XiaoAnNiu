//
//  ContentView.swift
//  XiaoAnNiu
//
//  Created by Tianyang Wang on 2020/11/12.
//  Copyright © 2020 Tianyang Wang. All rights reserved.
//

import SwiftUI
import AVFoundation

var audioPlayer: AVAudioPlayer!

struct ContentView: View {
    
    var body: some View {
        Button(action: {
            playSound()
            print("Sound pressed")
        }) {
            Text("DIAMDIAM").font(.title).fontWeight(.heavy).bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



func playSound() {
    let path = Bundle.main.path(forResource: "diamdiam" , ofType: "m4a")!
    let url = URL(fileURLWithPath: path)
    
    do {
        audioPlayer = try AVAudioPlayer(contentsOf: url)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    } catch {
        print("Sound failed")
    }
    
}
