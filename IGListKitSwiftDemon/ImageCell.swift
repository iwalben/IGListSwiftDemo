//
//  ImageCell.swift
//  IGListKitSwiftDemon
//
//  Created by walben on 2019/12/29.
//  Copyright © 2019 iwalben. All rights reserved.
//

import UIKit
import IGListKit

class ImageCell: UICollectionViewCell ,ListBindable{

    @IBOutlet weak var bImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func bindViewModel(_ viewModel: Any) {
        guard let viewModel = viewModel as? ImageViewModel else { return }
        self.bImageView.image = UIImage(named: viewModel.imagename)
    }
}
