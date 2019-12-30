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
    let likes : Int
    let comments : [CommentViewModel]
    
    
    init(username:String , timestamp:String ,imagename:String , likes:Int,comments:[CommentViewModel]){
        self.username = username
        self.timestamp = timestamp
        self.imagename = imagename
        self.likes = likes
        self.comments = comments
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return (username + timestamp + imagename) as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return true
    }
}
