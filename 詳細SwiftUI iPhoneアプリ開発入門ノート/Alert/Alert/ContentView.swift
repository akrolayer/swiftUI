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
    @State private var selection = 0
    @State var isMyChecked1: Bool = false
    @State var isMyChecked2: Bool = false
    @State var kingaku:String = ""
    @State var ninzu:String = ""
    
    var body: some View {
        VStack{
            NumberTextField(title: "金額", number: $kingaku)
            NumberTextField(title: "人数", number: $ninzu)
        }
        /*
        VStack {
            HStack{
                Text("担当者1のチェック")
                CheckMarkPerson(isChecked: $isMyChecked1)
            }
            HStack{
                Text("担当者2のチェック")
                CheckMarkPerson(isChecked: $isMyChecked2)
            }
            if isMyChecked1 && isMyChecked2{
                Text("全員チェック済み")
                    .foregroundColor(.blue)
                    .padding()
            }else{
                Text("チェック待ち")
                    .foregroundColor(.red)
                    .padding()
            }
        }
 */
        /*
        TabView(selection: $selection){
            FirstView()
                .tabItem{
                    Image("first")
                    Text("First")
                }
                .tag(0)
            
                SecondView()
                .tabItem{
                    Image("second")
                    Text("Second")
                }
                .tag(1)
 */
        /*
        Text("Third View")
            .font(.title)
            .tabItem{
                VStack{
                    Image("third")
                    Text("Third")
                }
            }
            .tag(2)
         }
 */
        /*
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(photoArray){ photoData in
                    PhotoView(photo:photoData)
                }
            }
        }
 */
        /*
        ScrollView(.horizontal){
            HStack{
                ForEach(0..<10){ num in
                    Page(str: String(num))
                }
            }
        }
 */
        /*
        ScrollView{
            VStack{
                ForEach(0..<6){ num in
                    Page(str: String(num))
                }
            }
        }
 */
        /*
        ScrollView{
            VStack{
                ForEach(photoArray){ photoData in
                    PhotoView(photo:photoData)
                }
            }
        }
 */
        /*
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
 */
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

struct CheckMarkPerson: View{
    @Binding var isChecked: Bool
    
    var body: some View{
        Button(action: {
            self.isChecked.toggle()
        }) {
            Image(systemName: isChecked ?
                "person.crop.circle.badge.checkmark" :
                "person.crop.circle")
                .foregroundColor(isChecked ? .blue : .gray)
        }
        .imageScale(.large)
        .frame(width:40)
    }
}
func okAction(){
    print("削除ボタンが選ばれた")
}
func deleteProcess(){
    print("削除しました")
}
struct Page: View{
    let w:CGFloat = UIScreen.main.bounds.width*3/5
    let h:CGFloat = 200
    let str:String
    
    var body: some View{
        ZStack{
            Color.gray
                .frame(width: w, height: w)
                .cornerRadius(8)
            Text(str)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            NumberTextField(title: "テスト", number: .constant("123"))
                .previewDevice("iPhone Xs")
            NumberTextField(title: "テスト", number: .constant("-123"))
                .previewDevice("iPhone SE")
            NumberTextField(title: "テスト", number: .constant("abc"))
                .previewDevice("iPhone S")
        }
        
    }
}
