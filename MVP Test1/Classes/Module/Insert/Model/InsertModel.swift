//
//  InsertModel.swift
//  MVP Test1
//
//  Created by Amreth on 12/20/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class InsertModel{
    func uploadImage(image: UIImage){
        Alamofire.upload(multipartFormData:{
            formData in let imgData = UIImagePNGRepresentation(image)
            formData.
        })
    }
}
