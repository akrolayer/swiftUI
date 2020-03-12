//
//  ContentView.swift
//  calcBPM
//
//  Created by akrolayer on 2020/03/10.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import SwiftUI

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to: nil, from: nil, for: nil)
    }
}

struct ContentView: View {
    @State var BPM: String = ""
    @State var Notes: String = ""
    var body: some View {
        ZStack {
            Color.white
                .onTapGesture {
                    UIApplication.shared.endEditing()
            }
            VStack{
                TextField("BPMを入力してください", text:$BPM)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width: 250)
                
                TextField("何分音符か入力してください", text: $Notes)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width:250)
                Group{
                    if BPMIntCheck(BPM: BPM){
                        if NotesCheck(Notes: Notes){
                            Text("\(calcQuarterNotes(BPM: BPM, Notes: Notes))の４分")
                        }else{
                            Text("4分以上の存在する音符を入力してください")
                            .foregroundColor(.red)
                            .font(.headline)
                        }
                    }
                    else{
                        Text("BPMは10〜1000を入力してください")
                            .foregroundColor(.red)
                            .font(.headline)
                    }
                    
                }
                
            }
        }
    }
    func BPMIntCheck (BPM: String)-> Bool{
        guard let bpm = Int(BPM) else{
            return false
        }
        return (10...1000).contains(bpm)
    }
    
    func NotesCheck (Notes: String)-> Bool{
        guard let notes = Int(Notes) else{
            return false
        }
        return notes & (notes-1) == 0 || notes / 3 * 4 % 16 == 0
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
