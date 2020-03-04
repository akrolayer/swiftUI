//
//  Stopwatch.swift
//  chap7
//
//  Created by 岡本怜也 on 2020/03/04.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import Foundation

class Stopwatch: ObservableObject{
    @Published var counter: Int = 0
    var timer = Timer()
    
    func start(){
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){ _ in
            self.counter += 1
        }
        func stop(){
            timer.invalidate()
        }
        func reset(){
            timer.invalidate()
            counter = 0
        }
    }
}
