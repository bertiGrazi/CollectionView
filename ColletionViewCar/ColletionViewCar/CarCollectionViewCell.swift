//
//  CarCollectionViewCell.swift
//  ColletionViewCar
//
//  Created by Grazi Berti on 30/09/20.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    func setup(carro: Carro) {
        imageView.image = UIImage(named: carro.nome)
    }
}
