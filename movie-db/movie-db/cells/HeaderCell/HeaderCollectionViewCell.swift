//
//  HeaderCollectionViewCell.swift
//  movie-db
//
//  Created by Admin on 7/3/20.
//  Copyright © 2020 Mishka TBC. All rights reserved.
//

import UIKit

class HeaderCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var starsStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
