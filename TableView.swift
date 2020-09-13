//
//  TableView.swift
//  IdeaBook
//
//  Created by Maks Plank on 12.09.2020.
//  Copyright © 2020 Natalia Golovko. All rights reserved.
//

import UIKit

class TableView: UITableView {
    
    
    var custHeight: NSLayoutConstraint?
    var custBottom: NSLayoutConstraint?
    
    
    override func layoutSubviews() {
    super .layoutSubviews()
        
        guard let header = tableHeaderView else { return }
        if let image = header.subviews.first as? UIImageView {
            custHeight = image.constraints.filter{ $0.identifier == "heightInit" }.first
            custBottom = header.constraints.filter{ $0.identifier == "bottomInit" }.first
            }
        
        let offSetY = -contentOffset.y
        custHeight?.constant = max(header.bounds.height, header.bounds.height + offSetY)
        custBottom?.constant = offSetY >= 0 ? 0 : offSetY / 2
        
        header.clipsToBounds = offSetY <= 0
        }
}
    
    
    
    
//    // Custom TableView
//    // TableView is Subclass UITableView
//
//    @IBOutlet weak var custHeight: NSLayoutConstraint!
//
//    override func layoutSubviews() {
//        super .layoutSubviews()
//
//        guard let header = tableHeaderView else { return }
//        let offSetY = -contentOffset.y
//        // print(offSetY) // см в консчоли изменение величины
//
//        // change height (custHeight)
//        custHeight.constant = max(header.bounds.height, header.bounds.height + offSetY)
//
//        }
//

