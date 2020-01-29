//
//  ContentView.swift
//  HelloWorld
//
//  Created by Reiya Okamoto on 2020/01/27.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("bicycle for the mind")
                .font(.title)
                .fontWeight(.thin)
            Text("知性の自転車")
            .foregroundColor(Color.red)
            Text("春はあけぼの。やうやう白くなりゆく、山ぎはすこしあかりて、紫だちたる雲の細くたなびきたる")
                .multilineTextAlignment(.trailing)
                .lineLimit(2)
                .frame(width: 200.0, height: 100.0,alignment: .bottomTrailing)
                .border(Color.green, width: 5)
                .font(.system(size:150))
        }
        .foregroundColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
