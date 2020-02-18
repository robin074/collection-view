//
//  ViewController.swift
//  collectionView
//
//  Created by Apple MacBook Pro on 2/17/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var imageArray = ["amra","ata","dalim","dragon","dumur","jam","jambura","kathal","kul","lichu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
       
        
    }


}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return imageArray.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
    cell.imageShow.image = UIImage(named: imageArray[indexPath.item])
    return cell
    
}

}
