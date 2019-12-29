//
//  UserViewModel.swift
//  IGListKitSwiftDemon
//
//  Created by walben on 2019/12/29.
//  Copyright © 2019 iwalben. All rights reserved.
//

import UIKit
import IGListKit

class UserViewModel: ListDiffable {
    let username : String
    let timestamp : String
    
    init(username:String,timestamp:String) {
        self.username = username
        self.timestamp = timestamp
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return "User" as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? UserViewModel else  { return false }
        return username == object.username && timestamp == object.timestamp
    }
}
