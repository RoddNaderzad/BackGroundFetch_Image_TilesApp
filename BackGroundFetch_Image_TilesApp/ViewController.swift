//
//  ViewController.swift
//  BackGroundFetch_Image_TilesApp
//
//  Created by Rodd Naderzad on 11/30/15.
//  Copyright © 2015 Rodd Naderzad. All rights reserved.
//

import UIKit


class ImageCollectionViewCell:UICollectionViewCell{
    
     @IBOutlet weak var imageView: UIImageView!
}

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let imageURLArray =
    [
        "http://www.sjsu.edu/isa/pics/tower_water_fountain_660x340.jpg",
        "http://www.sjsu.edu/sjsuhome/pics/statues-02.jpg",
        "https://cmpe.sjsu.edu/files/public/tower-hall.jpg",
        "http://www.sjsu.edu/students/pics/student_spartan_pride.jpg",
        "http://www.sjsu.edu/facultyaffairs/pics/SanJoseStateSCIwords.jpg",
        "http://www.sjsu.edu/soar/DSC_0702.JPG"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
     
       collectionView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let reuseIdentifier = "cell"
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! ImageCollectionViewCell
        
        let imageName = imageURLArray[indexPath.item] as String!
        
        cell.imageView.imageFromUrl(imageName)
        
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageURLArray.count
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
        
    }
   


}



