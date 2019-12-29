//
//  ImageViewModel.swift
//  IGListKitSwiftDemon
//
//  Created by walben on 2019/12/29.
//  Copyright © 2019 iwalben. All rights reserved.
//

import UIKit
import IGListKit

class ImageViewModel: ListDiffable {
    
    let imagename : String
    
    init(imagename:String) {
        self.imagename = imagename
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return "imagename" as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? ImageViewModel else  { return false }
        return imagename == object.imagename
    }
    
}
