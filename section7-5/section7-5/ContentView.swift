//
//  ContentView.swift
//  section7-5
//
//  Created by 岡本怜也 on 2020/03/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MapView()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius:10)
            .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
