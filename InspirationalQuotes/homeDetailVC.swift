//
//  homeDetailVC.swift
//  InspirationalQuotes
//
//  Created by macpro on 31/01/2020.
//  Copyright © 2020 groundZero. All rights reserved.
//

import UIKit

class homeDetailVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeDetailRC") as!homeDetailTVC
//        cell.myQuoteContentImage.image = myImage
//        cell.userQuoteLabel.text = "something"
        return cell
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
