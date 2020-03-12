//
//  NumberTextField.swift
//  Alert
//
//  Created by 岡本怜也 on 2020/03/03.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct NumberTextField: View {
    var title: String
    @Binding var number: String
    
    var body: some View {
        HStack{
            Text(title + ":")
            TextField("0", text: $number)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numbersAndPunctuation)
            if numCheck(number){
                Image(systemName: "checkmark")
                    .foregroundColor(.blue)
            }else{
                Image(systemName: "arrow.left")
                    .foregroundColor(.red)
            }
        }.frame(width:150)
    }
    func numCheck(_ number:String) -> Bool{
        guard let num = Int(number) else{
            return false
        }
        return num > 0
    }
}

struct NumberTextField_Previews: PreviewProvider {
    static var previews: some View {
        NumberTextField(title: "テスト", number: .constant("123"))
    }
}
