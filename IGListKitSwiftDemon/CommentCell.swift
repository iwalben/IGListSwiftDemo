//
//  CommentCell.swift
//  IGListKitSwiftDemon
//
//  Created by walben on 2019/12/30.
//  Copyright © 2019 iwalben. All rights reserved.
//

import UIKit
import IGListKit

class CommentCell: UICollectionViewCell,ListBindable {

    @IBOutlet weak var contentL: UILabel!
    @IBOutlet weak var nameL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func bindViewModel(_ viewModel: Any) {
        guard let viewModel = viewModel as?CommentViewModel  else {return}
        contentL.text = viewModel.content
        nameL.text = viewModel.name
    }

}
