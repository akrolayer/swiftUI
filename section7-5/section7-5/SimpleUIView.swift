//
//  SimpleUIView.swift
//  section7-5
//
//  Created by 岡本怜也 on 2020/03/09.
//

import SwiftUI

struct SimpleUIView: UIViewRepresentable {
    
    func makeUIView(context: Context)->UIView{
        let view = UIView()
        view.backgroundColor=UIColor.cyan
        return view
    }
    
    func updateUIView(_ view: UIView, context: Context) {
        let label = UILabel()
        label.text="こんにちは"
        label.frame = CGRect(x: 40, y:40, width: 100, height: 30)
        view.addSubview(label)
    }
}

struct SimpleUIView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleUIView()
    }
}
