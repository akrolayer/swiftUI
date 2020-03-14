//
//  ContentView.swift
//  calcBPM
//
//  Created by akrolayer on 2020/03/10.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State var BPM: String = ""
    @State var Notes: String = ""
    @State var Note: Int = 0
    let NotesList = ["4", "8", "12", "16", "24", "32", "48", "64"]
    var sound: AVAudioPlayer?
    
    var body: some View {
        VStack{
            Text("BPM変換ツール")
                .font(.largeTitle)
            Text("4分音符に換算したときのBPMを計算します")
                .font(.title)
            TextField("BPMを入力してください", text:$BPM)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .frame(width: 250)
            if BPMIntCheck(BPM: BPM){
                Picker(selection: $Note, label: Text("何分音符ですか？")) {
                    ForEach(0..<NotesList.count){
                            Text(self.NotesList[$0])
                    }
                }
                Text("\(calcQuarterNotes(BPM: BPM, Notes: NotesList[Note]))の４分")
                        .font(.headline)
                        .foregroundColor(.green)
            }
            else{
                Text("BPMは10〜1000を入力してください")
                    .foregroundColor(.red)
                    .font(.headline)
            }
            
            Button(action: {
                
            }) {
                Text("play audio")
            }
        }
    }
    func BPMIntCheck (BPM: String)-> Bool{
        guard let bpm = Int(BPM) else{
            return false
        }
        return (10...1000).contains(bpm)
    }
    func calcQuarterNotes(BPM: String, Notes: String)-> Int{
        guard var bpm = Int(BPM) else { return 0 }
        guard var notes = Int(Notes) else { return 0 }
        if notes % 12 == 0{
            notes = notes / 3 * 4
            bpm = bpm / 4 * 3
            while(notes > 4){
                notes /= 2
                bpm *= 2
            }
            return bpm
        }else{
            while(notes > 4){
                notes /= 2
                bpm *= 2
            }
            return bpm
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

