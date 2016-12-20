//
//  ReadTableViewController.swift
//  MVP Test1
//
//  Created by Amreth on 12/19/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import UIKit
import Kingfisher

class ReadTableViewController: UITableViewController {
    var readpresenter = ReadPresenter()
    
    var article = [Article]()
    
    override func viewWillAppear(_ animated: Bool) {
        readpresenter.loadArticle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readpresenter.readTableViewControllerProtocol = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return article.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReadCell", for: indexPath) as! ReadTableViewCell
        
        let art = article[indexPath.row]
        cell.readTitle.text = art.title
        cell.readDes.text = art.description
        if let imgUrl = art.image, let url = URL(string:imgUrl){
            cell.disImg.kf.setImage(with: url, placeholder: #imageLiteral(resourceName: "Unknown"), options: nil, progressBlock: nil, completionHandler: nil)
        }
        return cell
    }
}

extension ReadTableViewController:ReadTableViewControllerProtocol{
    func responseData(data: [Article]){
        article = data
        tableView.reloadData()
    }
    
    
    
    
    
}
