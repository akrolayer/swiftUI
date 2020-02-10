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
        NavigationView{
            List(photoArray) { item in
                NavigationLink(destination: PhotoDataView(photo: item)){
                RowView(photo: item)
                }
            }
            .navigationBarTitle(Text("写真リスト"))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
