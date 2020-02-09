//
//  PhotoData.swift
//  PhotoList
//
//  Created by 岡本怜也 on 2020/02/10.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import Foundation

var photoArray:[PhotoData] = makeData()

struct PhotoData: Identifiable{
    var id:Int
    var imageName:String
    var title:String
}

func makeData()->[PhotoData]{
    var dataArray:[PhotoData]=[]
    dataArray.append(PhotoData(id:1,imageName: "1",title:"first"))
    dataArray.append(PhotoData(id:2,imageName: "2",title: "second"))
    dataArray.append(PhotoData(id:3,imageName: "3",title: "third"))
    dataArray.append(PhotoData(id:4,imageName: "4",title: "fourth"))
    dataArray.append(PhotoData(id:5,imageName: "5",title: "fifth"))
    dataArray.append(PhotoData(id:6,imageName: "6",title: "sixth"))
    return dataArray
}
