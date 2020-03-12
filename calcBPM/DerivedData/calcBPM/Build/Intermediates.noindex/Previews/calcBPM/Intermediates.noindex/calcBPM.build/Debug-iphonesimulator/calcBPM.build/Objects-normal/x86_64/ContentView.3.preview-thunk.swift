@_private(sourceFile: "ContentView.swift") import calcBPM
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 76)
        AnyView(__designTimeSelection(ContentView(), "#1649.[3].[0].property.[0].[0]"))
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
        return (10...1000).contains(__designTimeSelection(bpm, "#1649.[2].[3].[1].modifier[0].arg[0].value"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 22)
        AnyView(__designTimeSelection(ZStack {
            __designTimeSelection(Color.white
                .onTapGesture {
                    __designTimeSelection(UIApplication.shared.endEditing(), "#1649.[2].[2].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]")
            }, "#1649.[2].[2].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(VStack{
                __designTimeSelection(TextField(__designTimeString("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "BPMを入力してください"), text:__designTimeSelection($BPM, "#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value"))
                    .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value"))
                    .keyboardType(.numberPad)
                    .frame(width: __designTimeInteger("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[2].arg[0].value", fallback: 250)), "#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
                
                __designTimeSelection(TextField(__designTimeString("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "何分音符か入力してください"), text: __designTimeSelection($Notes, "#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[1].value"))
                    .textFieldStyle(__designTimeSelection(RoundedBorderTextFieldStyle(), "#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value"))
                    .keyboardType(.numberPad)
                    .frame(width:__designTimeInteger("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 250)), "#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1]")
                __designTimeSelection(Group{
                    if BPMIntCheck(BPM: BPM){
                        if NotesCheck(Notes: Notes){
                            __designTimeSelection(Text(__designTimeString("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].[0].[0].[0].[0].arg[0].value.[0].value", fallback: "OK")), "#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].[0].[0].[0].[0]")
                        }else{
                            __designTimeSelection(Text(__designTimeString("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].[0].[0].[1].[0].arg[0].value.[0].value", fallback: "存在する長さの音符を入力してください"))
                            .foregroundColor(.red)
                            .font(.headline), "#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].[0].[0].[1].[0]")
                        }
                    }
                    else{
                        __designTimeSelection(Text(__designTimeString("#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].[1].[0].arg[0].value.[0].value", fallback: "BPMは10〜1000を入力してください"))
                            .foregroundColor(.red)
                            .font(.headline), "#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].[1].[0]")
                    }
                    
                }, "#1649.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2]")
                
            }, "#1649.[2].[2].property.[0].[0].arg[0].value.[1]")
        }, "#1649.[2].[2].property.[0].[0]"))
#sourceLocation()
    }
}

extension UIApplication {
    @_dynamicReplacement(for: endEditing()) private func __preview__endEditing() {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/calcBPM/calcBPM/ContentView.swift", line: 13)
        __designTimeSelection(sendAction(#selector(UIResponder.resignFirstResponder),
                   to: nil, from: nil, for: nil), "#1649.[1].[0].[0]")
#sourceLocation()
    }
}

typealias ContentView = calcBPM.ContentView
typealias ContentView_Previews = calcBPM.ContentView_Previews