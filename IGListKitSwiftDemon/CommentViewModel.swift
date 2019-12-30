//
//  CommentViewModel.swift
//  IGListKitSwiftDemon
//
//  Created by walben on 2019/12/30.
//  Copyright © 2019 iwalben. All rights reserved.
//

import UIKit
import IGListKit

class CommentViewModel: ListDiffable {
    let name : String
    let content : String
    
    init(name:String , content :String) {
        self.name = name
        self.content = content
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return name+content as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? CommentViewModel else {
            return false
        }
        return name == object.name && content == object.content
    }
}
