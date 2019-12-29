//
//  AlSectionController.swift
//  IGListKitSwiftDemon
//
//  Created by walben on 2019/12/29.
//  Copyright © 2019 iwalben. All rights reserved.
//

import UIKit
import IGListKit

class AlSectionController: ListBindingSectionController<ListDiffable>,ListBindingSectionControllerDataSource {
    
    override init(){
        super.init()
        dataSource = self
    }
    
    // MARK: ListBindingSectionControllerDataSource
    func sectionController(_ sectionController: ListBindingSectionController<ListDiffable>, viewModelsFor object: Any) -> [ListDiffable] {
        guard let object = object as? Model else { fatalError() }
        let results: [ListDiffable] = [
            UserViewModel(username: object.username, timestamp: object.timestamp),
            ImageViewModel(imagename: object.imagename),
            UserViewModel(username: object.username, timestamp: object.timestamp),
            UserViewModel(username: object.username, timestamp: object.timestamp)
        ]
        return results
    }
    
    func sectionController(_ sectionController: ListBindingSectionController<ListDiffable>, cellForViewModel viewModel: Any, at index: Int) -> UICollectionViewCell & ListBindable {
        let identifier: String
        switch viewModel {
        case is UserViewModel:
            identifier = "UserCell"
            guard let cell = collectionContext?.dequeueReusableCell(withNibName: identifier, bundle: .main, for: self, at: index) as? UserCell else { fatalError() }
            return cell
        case is ImageViewModel :
            identifier = "ImageCell"
            guard let cell = collectionContext?.dequeueReusableCell(withNibName: identifier, bundle: .main, for: self, at: index) as? ImageCell else { fatalError() }
            return cell
        default:
            identifier = "action"
            guard let cell = collectionContext?.dequeueReusableCell(withNibName: identifier, bundle: .main, for: self, at: index) as? UserCell else { fatalError() }
            return cell
        }
    }
    
    func sectionController(_ sectionController: ListBindingSectionController<ListDiffable>, sizeForViewModel viewModel: Any, at index: Int) -> CGSize {
        guard let width = collectionContext?.containerSize.width else { fatalError() }
        let height: CGFloat
        switch viewModel {
        case is UserViewModel: height = 60
        case is ImageViewModel : height = 300
        default: height = 55
        }
        return CGSize(width: width, height: height)
    }
}
