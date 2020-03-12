//
//  SettingView.swift
//  chap7
//
//  Created by 岡本怜也 on 2020/03/07.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    @EnvironmentObject var shareData: ShareData
    
    var body: some View {
        ZStack{
            Color(red: 0.9,green:0.9,blue:0.9)
                .edgesIgnoringSafeArea(.all)
                .overlay( Capsule()
                    .foregroundColor(.black)
                    .opacity(0.2)
                    .frame(width: 100, height: 8)
                    .padding()
                    , alignment: .top)
            VStack{
                Text("値の設定")
                Toggle(isOn: $shareData.yesNo){
                    Text("Yes/No : \(shareData.yesNo ? "Yes" : "No")")
                }.frame(width:250)
                Stepper(value: $shareData.num,in: 1...5){
                    Text("★:\(shareData.num)")
                }.frame(width:250)
            }
            .font(.title)
            .padding(.horizontal, 50)
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
        .environmentObject(ShareData())
    }
}
