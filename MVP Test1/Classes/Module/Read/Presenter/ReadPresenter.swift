//
//  ReadPresenter.swift
//  MVP Test1
//
//  Created by Amreth on 12/19/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import Foundation

class ReadPresenter{
    
    var readModel = ReadModel()
    var readTableViewControllerProtocol: ReadTableViewControllerProtocol?
    init() {
        readModel.readPresenterProtocol = self
    }
    func loadArticle(){
        readModel.loadArticle()
    }
}

extension ReadPresenter:ReadPresenterProtocol{
    func responseData(data: [Article]) {
        readTableViewControllerProtocol?.responseData(data: data)
    }
}
