@_private(sourceFile: "ContentView.swift") import calcBPM
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 91)
        AnyView(ContentView())
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: calcQuarterNotes(BPM:Notes:)) private func __preview__calcQuarterNotes(BPM: String, Notes: String)-> Int {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 68)
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
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: BPMIntCheck(BPM:)) private func __preview__BPMIntCheck(BPM: String)-> Bool {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 52)
        guard let bpm = Int(BPM) else{
            return false
        }
        return (10...1000).contains(bpm)
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 17)
        AnyView(VStack{
            Text(__designTimeString("#1649.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "BPM変換ツール"))
                .font(.largeTitle)
            Spacer()
            Text(__designTimeString("#1649.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].value", fallback: "4分音符に換算したときのBPMを計算します"))
                .font(.title)
            Spacer()
            TextField(__designTimeString("#1649.[1].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[0].value", fallback: "BPMを入力してください"), text:$BPM)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .frame(width: __designTimeInteger("#1649.[1].[4].property.[0].[0].arg[0].value.[4].modifier[2].arg[0].value", fallback: 250))
            /*
            TextField("何分音符か入力してください", text: $Notes)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .frame(width:250)
            */
            if BPMIntCheck(BPM: BPM){
                Picker(selection: $Note, label: Text(__designTimeString("#1649.[1].[4].property.[0].[0].arg[0].value.[5].[0].[0].arg[1].value.arg[0].value.[0].value", fallback: "何分音符ですか？"))) {
                    ForEach(0..<NotesList.count){
                            Text(self.NotesList[$0])
                    }
                }
                Text("\(__designTimeString("#1649.[1].[4].property.[0].[0].arg[0].value.[5].[0].[1].arg[0].value.[0].value", fallback: ""))\(calcQuarterNotes(BPM: BPM, Notes: NotesList[Note]))\(__designTimeString("#1649.[1].[4].property.[0].[0].arg[0].value.[5].[0].[1].arg[0].value.[2].value", fallback: "の４分"))")
                        .font(.headline)
                        .foregroundColor(.green)
            }
            else{
                Text(__designTimeString("#1649.[1].[4].property.[0].[0].arg[0].value.[5].[1].[0].arg[0].value.[0].value", fallback: "BPMは10〜1000を入力してください"))
                    .foregroundColor(.red)
                    .font(.headline)
            }
        })
#sourceLocation()
    }
}

typealias ContentView = calcBPM.ContentView
typealias ContentView_Previews = calcBPM.ContentView_Previews