//
//  SecondView.swift
//  Alert
//
//  Created by 岡本怜也 on 2020/03/01.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack{
            Text("Hello, SecondView!")
                .font(.title)
            Image(systemName: "2.circle.fill")
                .scaleEffect(x:3, y:3)
                .padding(40)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
