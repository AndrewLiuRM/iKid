//
//  Joke.swift
//  ikid
//
//  Created by Andrew Liu on 11/1/17.
//  Copyright © 2017 Andrew Liu. All rights reserved.
//

import Foundation
// Joke model
class Joke {
    public var type:String;
    public var content:String;
    public var punchline:String;
    
    // Initializer
    init(type: String, content: String, punchline: String) {
        self.type = type
        self.content = content
        self.punchline = punchline
    }
}
