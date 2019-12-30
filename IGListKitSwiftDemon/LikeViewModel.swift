//
//  LikeViewModel.swift
//  IGListKitSwiftDemon
//
//  Created by walben on 2019/12/30.
//  Copyright © 2019 iwalben. All rights reserved.
//

import UIKit
import IGListKit

class LikeViewModel: ListDiffable {
    let likes : Int
    
    init(likes:Int) {
        self.likes = likes
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return "like" as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? LikeViewModel else {
            return false
        }
        return likes == object.likes
    }
}
