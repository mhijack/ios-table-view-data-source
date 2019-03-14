//
//  DetailViewController.swift
//  ios-table-view-delegate
//
//  Created by jianyuan chen on 2019-03-14.
//  Copyright © 2019 Jianyuan Chen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var deatilText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = deatilText
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
