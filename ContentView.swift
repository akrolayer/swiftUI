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
            Spacer()
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
            Image("first")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .scaleEffect(1.8)
                .offset(x:-70,y:-30)
                .frame(width: 200,height: 300)
                .clipped()
                .overlay(
                    Text("春はあけぼの。")
                    .font(.title)
                    .fontWeight(.title)
                        .forgroundColor(Color.white)
            )
            Spacer()
            VStack(alignment: .leading){
                
                
                Text("夏は夜")
                Text("秋は夕暮れ")
                    .padding(.top, 80)
                Text("冬はつとめて")
                    .offset(x:-10,y:10)
            }
            Spacer()
        }
            
        .foregroundColor(.blue)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
