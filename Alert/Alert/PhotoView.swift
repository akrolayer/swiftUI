//
//  PhotoView.swift
//  Alert
//
//  Created by 岡本怜也 on 2020/02/29.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct PhotoView: View {
    var photo:PhotoData
    let w:CGFloat = UIScreen.main.bounds.width - 100
    
    var body: some View {
        VStack{
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Text(photo.title)
                .font(.caption)
                .padding()
        }
        .padding()
        /*
        VStack{
            Image(photo.imageName)
            .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:w, height: w)
            .clipped()
            Text(photo.title).padding()
        }
    .padding()
        .background(Color(red: 0.9,green:0.9,blue: 0.7))
    .cornerRadius(8)
 */
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(photo:photoArray[0])
    }
}
