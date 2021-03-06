//
//  SimpleViewControllerOne.swift
//  SlidingTabExample
//
//  Created by Suprianto Djamalu on 03/08/19.
//  Copyright © 2019 Suprianto Djamalu. All rights reserved.
//

import UIKit

class SimpleViewControllerOne: UIViewController {

    // init slidingTabController to add to main view later
    // or you can just extends the UISimpleSlidingController
    // see in SimpleViewControllerTwo.swift
    private let slidingTabController = UISimpleSlidingTabController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        // view
        view.backgroundColor = .white
        view.addSubview(slidingTabController.view) // add slidingTabController to main view
        
        // navigation
        navigationItem.title = "Sliding Tab Example"
        navigationController?.navigationBar.barTintColor = .orange
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barStyle = .black
        
        // MARK: slidingTabController
        slidingTabController.addItem(item: SimpleItemViewControllerOne(), title: "First") // add first item
        slidingTabController.addItem(item: SimpleItemViewControllerTwo(), title: "Second") // add second item
        slidingTabController.addItem(item: SimpleItemViewControllerThree(), title: "Third") // add other item
        slidingTabController.addItem(item: SimpleItemViewControllerThree(), title: "Forth") // add other item
        slidingTabController.addItem(item: SimpleItemViewControllerThree(), title: "Fifth") // add other item
        slidingTabController.addItem(item: SimpleItemViewControllerThree(), title: "Sixth") // add other item
        slidingTabController.addItem(item: SimpleItemViewControllerThree(), title: "Seventh") // add other item
        slidingTabController.setHeaderActiveColor(color: .white) // default blue
        slidingTabController.setHeaderInActiveColor(color: .lightText) // default gray
        slidingTabController.setHeaderBackgroundColor(color: .orange) // default white
        slidingTabController.setCurrentPosition(position: 1) // default 0
        slidingTabController.setStyle(style: .flexible) // default fixed
        slidingTabController.build() // build
    }
    
}

