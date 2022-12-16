//
//  ViewController.swift
//  collectionViewDemo
//
//  Created by Mac on 01/12/22.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    var mobileName = ["iPhone 13 Pro Max","iphone 14 pro","iphone 14 pro max"]

    var LabelName = ["13 pro max","14 pro","14 pro max"]

    
    @IBOutlet weak var collectionView1: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView1.dataSource = self
        collectionView1.delegate = self
        
        let nibName = UINib(nibName: "DemoCollectionViewCell", bundle: nil)
        self.collectionView1.register(nibName, forCellWithReuseIdentifier: "DemoCollectionViewCell")
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.mobileName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView1.dequeueReusableCell(withReuseIdentifier: "DemoCollectionViewCell", for: indexPath) as! DemoCollectionViewCell
        
        cell.imageView1.image = UIImage(named: mobileName[indexPath.row])
        cell.label1.text = LabelName[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 390, height: 200)
    }
}

