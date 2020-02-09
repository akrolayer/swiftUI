//
//  RowView.swift
//  PhotoList
//
//  Created by 岡本怜也 on 2020/02/10.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct RowView: View {
    var photo:PhotoData
    
    var body: some View {
        HStack{
            Image(photo.imageName)
            .resizable()
                .frame(width:80,height:80)
            Text(photo.title)
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(photo:photoArray[0])
            .previewLayout(.fixed(width:300,height:80))
    }
}
