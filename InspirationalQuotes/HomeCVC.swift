//
//  HomeCVC.swift
//  InspirationalQuotes
//
//  Created by macpro on 30/01/2020.
//  Copyright © 2020 groundZero. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class HomeCVC: UICollectionViewController {
    var imageLibrary: [UIImage] = []
    var myQuotesImages:[UIImage] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(homeCVCell.self, forCellWithReuseIdentifier: reuseIdentifier)
//UICollectionViewCell.self
        // Do any additional setup after loading the view.
        imageLibrary.append(UIImage(named: "fireSmall")!)
        imageLibrary.append(UIImage(named: "likelike")!)
        imageLibrary.append(UIImage(named: "heartSmall")!)
        imageLibrary.append(UIImage(named: "fireSmall")!)
        imageLibrary.append(UIImage(named: "homeBlackSmall")!)
        imageLibrary.append(UIImage(named: "homeWhiteSmall")!)
        imageLibrary.append(UIImage(named: "heartSmall")!)
        imageLibrary.append(UIImage(named: "fireSmall")!)
        imageLibrary.append(UIImage(named: "likelike")!)
        imageLibrary.append(UIImage(named: "homeBlackSmall")!)
        imageLibrary.append(UIImage(named: "homeWhiteSmall")!)
        imageLibrary.append(UIImage(named: "homeBlackSmall")!)
        
        
        
        myQuotesImages = createArray()
        
        
        
    }

func createArray() -> [UIImage] {
    // myQuotesImages.append(UIImage(named: "heartSmall")!!)
    var temp:[UIImage] = []
    temp += [UIImage(named: "heartSmall")!, UIImage(named: "heartGreySmall")!, UIImage(named: "heartBlackSmall")!,UIImage(named: "fireSmall")!, UIImage(named: "heartBlackSmall")!,UIImage(named: "fireSmall")!]
    print(temp.count)
    return temp
    
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        print("\(imageLibrary.count)")
        return myQuotesImages.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! homeCVCell
    
        // Configure the cell
//        let myImage = myQuotesImages[indexPath.row]
//        print("\(myQuotesImages[indexPath.row])")
//        cell.image1.image = UIImage(named: "fireSmall")
        
//        cell.firstImage.image = UIImage(named: "fireSmall")
        
//        cell.secondImage.image = UIImage(named: "fireSmall")
//        cell.thirdImage.image = UIImage(named: "fireSmall")
//        cell.fourthImage.image = UIImage(named: "fireSmall")
//        cell.fifthImage.image = UIImage(named: "fireSmall")
//        cell.sixthImage.image = UIImage(named: "fireSmall")

        //        cell.secondImage.image = UIImage(named: "\(imageLibrary[indexPath.row])")
//        cell.thirdImage.image = UIImage(named: "\(imageLibrary[indexPath.row])")
//        cell.fourthImage.image = UIImage(named: "\(imageLibrary[indexPath.row])")
//        cell.fifthImage.image = UIImage(named: "\(imageLibrary[indexPath.row])")
//        cell.sixthImage.image = UIImage(named: "\(imageLibrary[indexPath.row])")
//
//

        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */


    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
