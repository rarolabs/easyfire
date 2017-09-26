//
//  ModelEF.swift
//  easyhome
//
//  Created by Rodrigo Sol on 19/09/17.
//  Copyright © 2017 Rodrigo Sol. All rights reserved.
//

import Foundation
import FirebaseDatabase

protocol ModelEF {
    
    var key : String? {get set}
    var parentKeys : [String]? {get set}
    var path : String? {get}
    
    
    func toAnyObject() -> Any
    
    init(key: String)
    init(snapshot: DataSnapshot)
}
