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
        Alamofire.upload(multipartFormData: { formData in
        
        }, usingThreshold: <#T##UInt64#>, to: <#T##URLConvertible#>, method: <#T##HTTPMethod#>, headers: <#T##HTTPHeaders?#>, encodingCompletion: <#T##((SessionManager.MultipartFormDataEncodingResult) -> Void)?##((SessionManager.MultipartFormDataEncodingResult) -> Void)?##(SessionManager.MultipartFormDataEncodingResult) -> Void#>)
    }
}
