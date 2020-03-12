//
//  SubView.swift
//  PhotoList
//
//  Created by 岡本怜也 on 2020/02/14.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct SubView: View {
    var body: some View {
        VStack{ Image("1").resizable().aspectRatio(contentMode: .fit)
        Text("苫小牧の人気者「とまチョップ」").padding(.bottom)
        Text("海の駅ぷらっとみなと市場では、水揚げ日本一のホッキ貝が大人気です!")
        }
    .padding()
        .navigationBarTitle(Text("とまチョップ"),displayMode: .inline)
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView()
    }
}
