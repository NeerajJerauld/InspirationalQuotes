//
//  MyQuotesVC.swift
//  InspirationalQuotes
//
//  Created by macpro on 25/01/2020.
//  Copyright © 2020 groundZero. All rights reserved.
//

import UIKit

class MyQuotesVC: UIViewController {
    
    
    @IBOutlet weak var myQuotesTVO: UITableView!
    var myQuotesImages:[UIImage] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        //Changing the color of the view background for testing
        view.backgroundColor = UIColor.yellow
        // Do any additional setup after loading the view.
        myQuotesTVO.delegate = self
        myQuotesTVO.dataSource = self
        myQuotesImages = createArray()
    }
    
    func createArray() -> [UIImage] {
       // myQuotesImages.append(UIImage(named: "heartSmall")!!)
        var temp:[UIImage] = []
        temp += [UIImage(named: "heartSmall")!, UIImage(named: "heartGreySmall")!, UIImage(named: "heartBlackSmall")!,UIImage(named: "fireSmall")!]
        print(temp.count)
        return temp
        
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


extension MyQuotesVC: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(myQuotesImages.count)
        return myQuotesImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myImage = myQuotesImages[indexPath.row]
        //myQuotesRI is the reuse identifier in the tableView MyQuotes
        let cell = tableView.dequeueReusableCell(withIdentifier: "myQuotesRI") as!MyQuotesTVC
        cell.myQuoteContentImage.image = myImage
        cell.userQuoteLabel.text = "something"
        return cell
    }
    
    
    
    
    
    
}
