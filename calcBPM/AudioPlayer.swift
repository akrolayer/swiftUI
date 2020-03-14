//
//  AudioPlayer.swift
//  calcBPM
//
//  Created by akrolayer on 2020/03/14.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import AVFoundation

var sound: AVAudioPlayer?

func playSound(){
    if let path = Bundle.main.path(forResource: "2_cymbal", ofType: "mp3"){
        do{
            sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            print("Playing sound")
            sound?.play()
        }catch{
            print("Could not file path")
        }
    }
}
