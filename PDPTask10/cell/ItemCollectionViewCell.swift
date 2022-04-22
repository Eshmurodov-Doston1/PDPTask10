//
//  ItemCollectionViewCell.swift
//  PDPTask10
//
//  Created by macbro on 22/04/22.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var imageItem: UIImageView!
    
    @IBOutlet weak var viewText: UIView!
    
    @IBOutlet weak var itemText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
