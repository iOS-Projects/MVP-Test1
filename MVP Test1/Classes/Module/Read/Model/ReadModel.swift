//
//  ReadModel.swift
//  MVP Test1
//
//  Created by Amreth on 12/19/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper


class ReadModel{
    
    var readPresenterProtocol : ReadPresenterProtocol?
    
    func loadArticle(){
        let url = URL(string: ARTICLE_URL)
        Alamofire.request(url!, method: .get, parameters: nil, encoding: URLEncoding.default, headers: HEADERS).responseArray(queue: nil, keyPath: "DATA", context: nil, completionHandler: {
            (response:DataResponse<[Article]>) in self.readPresenterProtocol?.responseData(data: response.result.value!)
        })
    }
    
}
