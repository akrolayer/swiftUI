//
//  SomeView.swift
//  Alert
//
//  Created by 岡本怜也 on 2020/02/28.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct SomeView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            Spacer()
            Text("プレゼンテーション")
            Image(systemName: "gift")
                .imageScale(.large).padding()
            Spacer()
            Button(action: {self.presentation.wrappedValue.dismiss()
            }) {
                Text("OK").font(.title)
            }.padding()
        }
    }
}

struct SomeView_Previews: PreviewProvider {
    static var previews: some View {
        SomeView()
    }
}
