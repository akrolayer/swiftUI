//
//  AudioPlayer.swift
//  calcBPM
//
//  Created by akrolayer on 2020/03/14.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import Foundation
import Combine
import AVFoundation

class AudioPlayer: ObservableObject{
    var audio: AVAudioPlayer!
    @Published var username = ""
    
    init(){
        let path = Bundle.main.path(forResource: username, ofType: "mp3")
        do{
            self.audio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
        } catch{
            print ("could not find the file")
        }
    }
    func playAudio(){
        audio.play()
    }
    func pauseAudio(){
        audio.pause()
    }
    func stopAudio(){
        audio.stop()
    }
}


