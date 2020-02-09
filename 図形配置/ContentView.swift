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
            Text("春はあけぼの。やうやう白くなりゆく、山ぎは")
                .multilineTextAlignment(.trailing)
                .lineLimit(2)
                .frame(width: 200.0, height: 100.0,alignment: .bottomTrailing)
                .border(Color.green, width: 5)
                .font(.system(size:10))
            Image("first")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .scaleEffect(1.8)
                .offset(x:-70,y:-30)
                .frame(width: 100,height: 200)
                .clipped()
                .overlay(
                    Text("春はあけぼの。")
                    .font(.title)
                    .fontWeight(.light)
                        .foregroundColor(Color.black)
                        .offset(x:0,y:-50)
            )
            HStack{
                    Circle()
                        .foregroundColor(.red)
                        .frame(width:50,height: 50)
                        .position(x:120,y:150)
                    Ellipse()
                        .stroke()
                        .foregroundColor(.red)
                        .frame(width:50,height: 100)
                        .position(x: 300, y: 350)
                    Rectangle()
                    .foregroundColor(.red)
                    .frame(width:50,height: 50)
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundColor(.red)
                        .frame(width:100, height:50)
                    Capsule()
                        .foregroundColor(.red)
                        .frame(width:200,height:150)
                        .rotationEffect(.degrees(45))
                    .clipped()
            }
        ZStack{
            Ellipse()
                .stroke(lineWidth:4)
                .foregroundColor(.pink)
                .frame(width:100,height:300)
            Ellipse()
            .stroke(lineWidth: 4)
                .foregroundColor(.purple)
                .frame(width:100,height:300)
                .rotationEffect(.degrees(30),anchor:.bottom)
            Ellipse()
            .stroke(lineWidth: 4)
                .foregroundColor(.green)
                .frame(width:100,height:300)
                .rotationEffect(.degrees(-30),anchor: .bottom)
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
