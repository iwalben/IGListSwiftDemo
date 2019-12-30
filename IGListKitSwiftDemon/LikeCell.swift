//
//  LikeCell.swift
//  IGListKitSwiftDemon
//
//  Created by walben on 2019/12/30.
//  Copyright © 2019 iwalben. All rights reserved.
//

import UIKit
import IGListKit

protocol LikeDelegate :class {
    func didSelected(cell:LikeCell) -> Void
}

class LikeCell: UICollectionViewCell ,ListBindable{

    weak var delegate:LikeDelegate?

    @IBOutlet weak var numberL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func btnClick(_ sender: UIButton) {
        delegate?.didSelected(cell: self)
    }
    
    func bindViewModel(_ viewModel: Any) {
        guard let viewModel = viewModel as? LikeViewModel else {
            return
        }
        numberL.text = "\(viewModel.likes)"
    }
    
}
