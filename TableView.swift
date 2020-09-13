//
//  TableView.swift
//  IdeaBook
//
//  Created by Maks Plank on 12.09.2020.
//  Copyright © 2020 Natalia Golovko. All rights reserved.
//

import UIKit

class TableView: UITableView {
    
    // Custom TableView
    // TableView is Subclass UITableView

    @IBOutlet weak var custHeight: NSLayoutConstraint!
    
    override func layoutSubviews() {
        super .layoutSubviews()
        
        guard let header = tableHeaderView else { return }
        let offSetY = -contentOffset.y
        // print(offSetY) // см в консчоли изменение величины
        
        // change height (custHeight)
        custHeight.constant = max(header.bounds.height, header.bounds.height + offSetY)
        
        }
    
}
