@_private(sourceFile: "ContentView.swift") import section7_5
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/section7-5/section7-5/ContentView.swift", line: 26)
        AnyView(ContentView())
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/akrolayer/Desktop/swiftUI/section7-5/section7-5/ContentView.swift", line: 12)
        AnyView(SimpleUIView()
            .frame(width:__designTimeInteger("#1704.[1].[0].property.[0].[0].modifier[0].arg[0].value", fallback: 200), height: __designTimeInteger("#1704.[1].[0].property.[0].[0].modifier[0].arg[1].value", fallback: 200)))
#sourceLocation()
        /*
        MapView()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius:10)
            .padding(40)
 */
    }
}

typealias ContentView = section7_5.ContentView
typealias ContentView_Previews = section7_5.ContentView_Previews