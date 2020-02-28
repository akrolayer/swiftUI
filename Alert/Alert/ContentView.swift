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
    @State var isSheet: Bool = false
    @State var isModal: Bool = false
    @State var counter: Int = 0
    
    var body: some View {
        VStack{
            Button(action:{
                self.isModal = true
            }){
                Text("Sheetテスト")
            }
            .sheet(isPresented: $isModal, onDismiss: {self.countUp()}){
                SomeView()
            }
            .disabled(counter >= 3)
            Text("回数:\(counter)")
                .font(.title)
            .padding()
        }
        /*
        Button(action: {
            self.isSheet = true
        }) {
            Text("削除")
                .foregroundColor(.white)
                .background(Capsule()
                    .foregroundColor(.red)
                    .frame(width: 100,height: 30))
            }.actionSheet(isPresented: $isSheet){
            ActionSheet(title: Text("削除しますか？"),
                buttons:[
                    .destructive(Text("削除"),action:{
                        deleteProcess()
                    }),
                    .cancel(Text("キャンセル"),action:{})
                ])
        }
 */
        /*
        Button(action: {
            self.isSheet = true
        }) {
            Text("Action Sheetテスト")
        }.actionSheet(isPresented: $isSheet){
            ActionSheet(title: Text("タイトル"),
                        message: Text("メッセージ文"),
                        buttons:[
                            .default(Text("ボタン1"),action: {}),
                            .default(Text("ボタン2"),action: {}),
                            .destructive(Text("削除"),action: {}),
                            .cancel(Text("キャンセル"), action: {})
                ])
        }
 */
        /*
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
 */
    }
    func countUp(){
        self.counter += 1
    }
}
func okAction(){
    print("削除ボタンが選ばれた")
}
func deleteProcess(){
    print("削除しました")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
