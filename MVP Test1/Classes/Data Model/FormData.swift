//
//  FormData.swift
//  MVP Test1
//
//  Created by Amreth on 12/19/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import Foundation
import ObjectMapper

class Article : Mappable{
    var id:Int?
    var title:String?
    var description:String?
    var image:String?
    required init(map:Map){}
    
    func mapping(map: Map) {
        id  <- map["ID"]
        title <- map["TITLE"]
        description <- map  ["DESCRIPTION"]
        image <- map["IMAGE"]
    }
    
}

class Pagination{
    var page:Int?
    var limit:Int?
    var total_count:Int?
    var totat_pages:Int?
}
