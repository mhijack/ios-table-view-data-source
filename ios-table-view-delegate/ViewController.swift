//
//  ViewController.swift
//  ios-table-view-delegate
//
//  Created by jianyuan chen on 2019-03-14.
//  Copyright © 2019 Jianyuan Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let dataSource = ["Jack", "Melody", "Jason", "Mary"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
    }

}

// MARK: - Table View Delegate
extension ViewController: UITableViewDelegate {
    
    // This is called every time a cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Force-unwrap & initiate the VC we wanna go to
        let detailViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        // Push to the view controller
        navigationController?.pushViewController(detailViewController, animated: true)
        detailViewController.deatilText = dataSource[indexPath.row]
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}

// MARK: - Table View Data Source
extension ViewController: UITableViewDataSource {
    
    // Gets number of cells
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    // Generates individual cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomCell
        
        cell.cellLabel.text = dataSource[indexPath.row]
        
        return cell
    }
    
}
