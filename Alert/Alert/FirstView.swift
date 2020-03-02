//
//  FirstView.swift
//  Alert
//
//  Created by 岡本怜也 on 2020/03/01.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack{
        Text("Hello, FirstView!")
            .font(.title)
        Image(systemName: "1.circle.fill")
            .scaleEffect(x:3, y:3)
            .padding(40)
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
