//
//  ContentView.swift
//  PhotoList
//
//  Created by 岡本怜也 on 2020/02/10.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //@State var num:Int = 0
    //@State var msg = "Thank you!"
    @State var iLike = true
    @State var isFast = true
    
    var body: some View {
        VStack{
            Toggle(isOn: $iLike) {
                Text("Like or not").font(.largeTitle)
            }
            .fixedSize().padding(50)
            if iLike{
                Image(systemName: "heart.fill")
                    .font(.system(size:80))
                    .foregroundColor(.red)
            }else{
                Image(systemName: "heart.slash")
                    .font(.system(size:80))
                    .foregroundColor(.gray)
            }
            HStack{
                    Button(action:{
                        withAnimation{
                            self.isFast.toggle()
                        }
                }){ Image(systemName: isFast ? "hare" : "tortoise")
                    .foregroundColor(isFast ? .blue : .black)
                .rotationEffect(.degrees(isFast ? 0 : 180))
                    .scaleEffect(3)
                }
                .padding(30)
                Text(isFast ? "Fast" : "Slow")
                    .font(.title)
                    .foregroundColor(isFast ? .pink : .gray)
                    .rotationEffect(.degrees(isFast ? 0 : 180))
            }
            HStack{
                Image(systemName: "sun.max")
                Image(systemName: "cloud.rain")
                Image(systemName: "camera")
                Image(systemName: "message")
                Image(systemName: "a.circle")
                Image(systemName: "calendar")
                Image(systemName: "star.fill")
                    .frame(width:34, height:34)
                    .foregroundColor(Color.yellow)
                    .background(Color.green)
                .clipShape(Circle())
            }
            .imageScale(.large)
        }
            
        /*
        VStack{
            Button("Tap"){
                if self.msg == "Thank you!"{
                    self.msg = "ありがとう"
                }else{
                    self.msg = "Thank you!"
                } }.font(.headline).foregroundColor(.white)
            .background(
                Capsule()
                .foregroundColor(.green)
                    .frame(width:90, height: 30)
            )
            Text(msg).padding()
        }
 */
        //RamdomElementで配列からランダムに出力
            /*
        Button(action: {
            self.num = Int.random(in: 0...100)
            //print(num)
        }){
            Text("Ramdom Button")
            .font(.largeTitle)
            .frame(width:200,height:60, alignment: .center)
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(15, antialiased: true)
        }
        Text("\(num)").font(.largeTitle).padding()
        }
 */
        /*
        NavigationView{
            VStack(alignment: .leading, spacing: 5){
                Image("1").resizable().aspectRatio(contentMode: .fit).frame(height:200)
                NavigationLink(destination:SubView()){
                    Text("とまチョップ")
                }
                .padding(.bottom)
                
                Image("2").resizable().aspectRatio(contentMode: .fit).frame(height:200)
                NavigationLink(destination:SubView2()){
                    Text("湘南の風景")
                    }
                }.navigationBarTitle("人気スポット")
        }
 */
        /*
        NavigationView{
            List(photoArray) { item in
                NavigationLink(destination: PhotoDataView(photo: item)){
                RowView(photo: item)
                }
            }
            .navigationBarTitle(Text("写真リスト"))
        }
 */
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
