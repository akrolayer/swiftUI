//
//  PhotoDataView.swift
//  PhotoList
//
//  Created by 岡本怜也 on 2020/02/10.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct PhotoDataView: View {
    var photo:PhotoData
    
    var body: some View {
        VStack{
            Image(photo.imageName)
            Text(photo.title)
            Spacer()
        }
    .padding()
        .navigationBarTitle(Text(verbatim: photo.title),displayMode: .inline)
    }
}

struct PhotoDataView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDataView(photo:photoArray[0])
    }
}
