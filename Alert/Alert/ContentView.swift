//
//  ContentView.swift
//  Alert
//
//  Created by 岡本怜也 on 2020/02/26.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false
    var body: some View {
        VStack{
            Button(action:{
                self.isError = true
            }){
                Text("Alertテスト")
                }.alert(isPresented: $isError, content: {
                Alert(title: Text("タイトル"), message: Text("メッセージ文"),
                      //dismissButton: .default(Text("OK"), action: {}))
                    primaryButton: .destructive(Text("削除する"),action:{
                        okAction()
                    }),
                    secondaryButton: .cancel(Text("キャンセル"), action: {}))
            })
        }
    }
}
func okAction(){
    print("削除ボタンが選ばれた")
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
