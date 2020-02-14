//
//  SubView2.swift
//  PhotoList
//
//  Created by 岡本怜也 on 2020/02/14.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct SubView2: View {
    var body: some View {
        VStack{
            Image("3").resizable().aspectRatio(contentMode: .fit)
            Text("アウトトリガーカヌー").padding(.bottom)
            Image("4").resizable().aspectRatio(contentMode: .fit)
            Text("サザンビーチ海の家")
        }
    .padding()
        .navigationBarTitle(Text("湘南の風景"), displayMode: .inline)
    }
}

struct SubView2_Previews: PreviewProvider {
    static var previews: some View {
        SubView2()
    }
}
