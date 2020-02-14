//
//  ContentView.swift
//  PhotoList
//
//  Created by 岡本怜也 on 2020/02/10.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {}){
            Text("button")
        }
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
