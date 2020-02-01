//
//  HomeVC.swift
//  InspirationalQuotes
//
//  Created by macpro on 25/01/2020.
//  Copyright © 2020 groundZero. All rights reserved.
//

import UIKit

struct homeImageItems {
    var imageName: String
}

class HomeVC: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {
   

    @IBOutlet weak var homeCollectionView: UICollectionView!
    var sampleitems: [homeImageItems] = [homeImageItems(imageName:"likelike"),homeImageItems(imageName:"heartSmall"),homeImageItems(imageName:"homeBlackSmall"),homeImageItems(imageName:"heartSmall"),homeImageItems(imageName:"homeBlackSmall"),homeImageItems(imageName:"likelike"),homeImageItems(imageName:"likelike"),homeImageItems(imageName:"homeBlackSmall"),homeImageItems(imageName:"heartSmall"),homeImageItems(imageName:"likelike"),homeImageItems(imageName:"likelike"),homeImageItems(imageName:"heartSmall")]
    override func viewDidLoad() {
        super.viewDidLoad()
        //Changing the color of the view background for testing
        view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view.
//        homeCollectionView.delegate = self
//        homeCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleitems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeRC", for: indexPath) as! homeCVCell
        cell.homeImage.image = UIImage(named: sampleitems[indexPath.row].imageName)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var selectedCell: UICollectionViewCell = collectionView.cellForItem(at: indexPath)!
        print("\(selectedCell)")
        let transferingVC = self.storyboard?.instantiateViewController(withIdentifier: "homeDetailVC") as! homeDetailVC
        self.navigationController?.pushViewController(transferingVC, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
