//
//  UserCell.swift
//  IGListKitSwiftDemon
//
//  Created by walben on 2019/12/29.
//  Copyright © 2019 iwalben. All rights reserved.
//

import UIKit
import IGListKit
class UserCell: UICollectionViewCell ,ListBindable {

    @IBOutlet weak var usernameL: UILabel!
    @IBOutlet weak var timestampL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func bindViewModel(_ viewModel: Any) {
        guard let viewModel = viewModel as? UserViewModel else { return }
        self.usernameL.text = viewModel.username
        self.timestampL.text = viewModel.timestamp
    }

}
