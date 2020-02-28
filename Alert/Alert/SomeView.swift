//
//  SomeView.swift
//  Alert
//
//  Created by 岡本怜也 on 2020/02/28.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct SomeView: View {
    var body: some View {
        VStack{
            Text("プレゼンテーション")
            Image(systemName: "gift")
                .imageScale(.large).padding()
        }
    }
}

struct SomeView_Previews: PreviewProvider {
    static var previews: some View {
        SomeView()
    }
}
