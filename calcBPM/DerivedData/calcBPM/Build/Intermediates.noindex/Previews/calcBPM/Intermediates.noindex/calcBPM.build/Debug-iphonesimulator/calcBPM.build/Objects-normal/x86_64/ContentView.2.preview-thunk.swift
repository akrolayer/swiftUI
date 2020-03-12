@_private(sourceFile: "ContentView.swift") import calcBPM
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 76)
        AnyView(ContentView())
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: NotesCheck(Notes:)) private func __preview__NotesCheck(Notes: String)-> Bool {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 66)
        guard let notes = Int(Notes) else{
            return false
        }
        return notes & (notes-1) == 0 || notes / 3 * 4 % 16 == 0
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: BPMIntCheck(BPM:)) private func __preview__BPMIntCheck(BPM: String)-> Bool {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 59)
        guard let bpm = Int(BPM) else{
            return false
        }
        return (10...1000).contains(bpm)
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 22)
        AnyView(ZStack {
            Color.white
                .onTapGesture {
                    UIApplication.shared.endEditing()
            }
            VStack{
                TextField(__designTimeString("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "BPMを入力してください"), text:$BPM)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width: __designTimeInteger("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[2].arg[0].value", fallback: 250))
                
                TextField(__designTimeString("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "何分音符か入力してください"), text: $Notes)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width:__designTimeInteger("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 250))
                Group{
                    if BPMIntCheck(BPM: BPM){
                        if NotesCheck(Notes: Notes){
                            Text(__designTimeString("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].[0].[0].[0].[0].arg[0].value.[0].value", fallback: "OK"))
                        }else{
                            Text(__designTimeString("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].[0].[0].[1].[0].arg[0].value.[0].value", fallback: "存在する長さの音符を入力してください"))
                            .foregroundColor(.red)
                            .font(.headline)
                        }
                    }
                    else{
                        Text(__designTimeString("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].[1].[0].arg[0].value.[0].value", fallback: "BPMは10〜1000を入力してください"))
                            .foregroundColor(.red)
                            .font(.headline)
                    }
                    
                }
                
            }
        })
#sourceLocation()
    }
}

extension UIApplication {
    @_dynamicReplacement(for: endEditing()) private func __preview__endEditing() {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 13)
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to: nil, from: nil, for: nil)
#sourceLocation()
    }
}

typealias ContentView = calcBPM.ContentView
typealias ContentView_Previews = calcBPM.ContentView_Previews