//
//  ViewController.swift
//  IGListKitSwiftDemon
//
//  Created by walben on 2019/12/29.
//  Copyright © 2019 iwalben. All rights reserved.
//

import UIKit
import IGListKit

class ViewController: UIViewController ,ListAdapterDataSource{

     var data = [ListDiffable]()

     let collectionView: UICollectionView = {
         let flow = UICollectionViewFlowLayout()
         let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: flow)
         collectionView.backgroundColor = UIColor.white
         return collectionView
     }()
    lazy var adapter: ListAdapter = {
         let adapter = ListAdapter(updater: ListAdapterUpdater(), viewController: self)
     return adapter
     }()

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        data.append(Model(username: "zhangsan", timestamp: "2019-11-11", imagename: "bimage.jpg"))
        view.addSubview(collectionView)
        adapter.collectionView = collectionView
        adapter.dataSource = self
        collectionView.frame = view.bounds
    }
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
       return data
    }

    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return AlSectionController()
    }

    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}

