//
//  main.swift
//  swift_sample
//
//  Created by Elite on 2017. 8. 28..
//  Copyright © 2017년 LG. All rights reserved.
//


// 1. swift의 entry point는 main.swift

import Foundation

print("Hello, World!")

class Car {

    var speed:Int = 0
    var color:Int = 0
    
    func foo(){
        print("foo")
    }
    
    static func goo(){
        print("goo")
    }
}

var p = Car()
p.foo()
Car.goo()
