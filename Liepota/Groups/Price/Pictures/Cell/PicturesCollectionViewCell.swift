//
//  PicturesCollectionViewCell.swift
//  Liepota
//
//  Created by Наджафов Араз on 03.11.2020.
//

import UIKit

protocol ButtonOfAlertCollectionViewCellDelegate: class {
    func alertBttn(collectionViewCell: UICollectionViewCell)
}

class PicturesCollectionViewCell: UICollectionViewCell {
    
    // - UI
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var alertButton: UIButton!
    
    // - Delegate
    weak var delegate: ButtonOfAlertCollectionViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    @IBAction func alertButtonAction(_ sender: Any) {
        delegate?.alertBttn(collectionViewCell: self)
        print("Cell")
    }
    
    
}
