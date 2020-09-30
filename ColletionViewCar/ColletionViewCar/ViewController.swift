//
//  ViewController.swift
//  ColletionViewCar
//
//  Created by Grazi Berti on 30/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionViewCar: UICollectionView!
    
    var arrayCarros = [Carro] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewCar.delegate = self
        collectionViewCar.dataSource = self
        
        arrayCarros.append(Carro(nome: "carro1.jpg"))
        arrayCarros.append(Carro(nome: "carro2.jpg"))
        arrayCarros.append(Carro(nome: "carro3.jpeg"))
        arrayCarros.append(Carro(nome: "carro4.jpeg"))
    }
}

extension ViewController: UICollectionViewDelegate {
    
}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCarros.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewCar.dequeueReusableCell(withReuseIdentifier: "CarCollectionViewCell", for: indexPath) as! CarCollectionViewCell
        
        cell.setup(carro: arrayCarros[indexPath.row])
        
        return cell
    }
    
    
}
