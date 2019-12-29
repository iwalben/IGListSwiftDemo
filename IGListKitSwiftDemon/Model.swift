//
//  Model.swift
//  IGListKitSwiftDemon
//
//  Created by walben on 2019/12/29.
//  Copyright © 2019 iwalben. All rights reserved.
//

import UIKit
import IGListKit

final class Model: ListDiffable {
    let username : String
    let timestamp : String
    let imagename : String
    
    init(username:String , timestamp:String ,imagename:String){
        self.username = username
        self.timestamp = timestamp
        self.imagename = imagename
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return (username + timestamp + imagename) as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return true
    }
}
