@_private(sourceFile: "ContentView.swift") import calcBPM
import AVFoundation
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 81)
        AnyView(__designTimeSelection(ContentView(), "#1649.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: calcQuarterNotes(BPM:Notes:)) private func __preview__calcQuarterNotes(BPM: String, Notes: String)-> Int {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 59)
        guard var bpm = Int(BPM) else { return 0 }
        guard var notes = Int(Notes) else { return 0 }
        if notes % 12 == 0{
            notes = notes / 3 * 4
            bpm = bpm / 4 * 3
            while(notes > 4){
                notes /= 2
                bpm *= 2
            }
            return __designTimeSelection(bpm, "#1649.[2].[7].[2].[0].[3]")
        }else{
            while(notes > 4){
                notes /= 2
                bpm *= 2
            }
            return __designTimeSelection(bpm, "#1649.[2].[7].[2].[1].[1]")
        }
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: BPMIntCheck(BPM:)) private func __preview__BPMIntCheck(BPM: String)-> Bool {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 53)
        guard let bpm = Int(BPM) else{
            return false
        }
        return (10...1000).contains(__designTimeSelection(bpm, "#1649.[2].[6].[1].modifier[0].arg[0].value"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 20)
        AnyView(__designTimeSelection(VStack{
            __designTimeSelection(Text(__designTimeString("#1649.[2].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "BPM変換ツール"))
                .font(.largeTitle), "#1649.[2].[5].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(Text(__designTimeString("#1649.[2].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "4分音符に換算したときのBPMを計算します"))
                .font(.title), "#1649.[2].[5].property.[0].[0].arg[0].value.[1]")
            __designTimeSelection(TextField(__designTimeString("#1649.[2].[5].property.[0].[0].arg[0].value.[2].arg[0].value.[0].value", fallback: "BPMを入力してください"), text:__designTimeSelection($BPM, "#1649.[2].[5].property.[0].[0].arg[0].value.[2].arg[1].value"))
                .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#1649.[2].[5].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value"))
                .keyboardType(.numberPad)
                .frame(width: __designTimeInteger("#1649.[2].[5].property.[0].[0].arg[0].value.[2].modifier[2].arg[0].value", fallback: 250)), "#1649.[2].[5].property.[0].[0].arg[0].value.[2]")
            if BPMIntCheck(BPM: BPM){
                __designTimeSelection(Picker(selection: __designTimeSelection($Note, "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[0].arg[0].value"), label: __designTimeSelection(Text(__designTimeString("#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[0].arg[1].value.arg[0].value.[0].value", fallback: "何分音符ですか？")), "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[0].arg[1].value")) {
                    __designTimeSelection(ForEach(0..<NotesList.count){
                            __designTimeSelection(Text(__designTimeSelection(self.NotesList[__designTimeSelection($0, "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].value")], "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[0].arg[2].value.[0].arg[1].value.[0].arg[0].value")), "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[0].arg[2].value.[0].arg[1].value.[0]")
                    }, "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[0].arg[2].value.[0]")
                }, "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[0]")
                __designTimeSelection(Text("\(__designTimeString("#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[1].arg[0].value.[0].value", fallback: ""))\(__designTimeSelection(calcQuarterNotes(BPM: __designTimeSelection(BPM, "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[1].arg[0].value.[1].value.arg[0].value.arg[0].value"), Notes: __designTimeSelection(NotesList[__designTimeSelection(Note, "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[1].arg[0].value.[1].value.arg[0].value.arg[1].value.[0].value")], "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[1].arg[0].value.[1].value.arg[0].value.arg[1].value")), "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[1].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[1].arg[0].value.[2].value", fallback: "の４分"))")
                        .font(.headline)
                        .foregroundColor(.green), "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[0].[1]")
            }
            else{
                __designTimeSelection(Text(__designTimeString("#1649.[2].[5].property.[0].[0].arg[0].value.[3].[1].[0].arg[0].value.[0].value", fallback: "BPMは10〜1000を入力してください"))
                    .foregroundColor(.red)
                    .font(.headline), "#1649.[2].[5].property.[0].[0].arg[0].value.[3].[1].[0]")
            }
            
            __designTimeSelection(Button(action: {
                __designTimeSelection(self.audioPlayer.playSound(), "#1649.[2].[5].property.[0].[0].arg[0].value.[4].arg[0].value.[0]")
            }) {
                __designTimeSelection(Text(__designTimeString("#1649.[2].[5].property.[0].[0].arg[0].value.[4].arg[1].value.[0].arg[0].value.[0].value", fallback: "play audio")), "#1649.[2].[5].property.[0].[0].arg[0].value.[4].arg[1].value.[0]")
            }, "#1649.[2].[5].property.[0].[0].arg[0].value.[4]")
        }, "#1649.[2].[5].property.[0].[0]"))
#sourceLocation()
    }
}

typealias ContentView = calcBPM.ContentView
typealias ContentView_Previews = calcBPM.ContentView_Previews