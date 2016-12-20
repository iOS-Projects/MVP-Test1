//
//  InsertTableViewController.swift
//  MVP Test1
//
//  Created by Amreth on 12/20/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import UIKit

class InsertTableViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var insertPresenter = InsertPresenter()
    
    @IBOutlet weak var insertTitle: UITextField!
    @IBOutlet weak var insertImg: UIImageView!
    @IBOutlet weak var insertDes: UITextField!
    @IBAction func btnBrowse(_ sender: Any) {
        let pickImg = UIImagePickerController()
        pickImg.delegate = self
        pickImg.allowsEditing = false
        pickImg.sourceType = .photoLibrary
        present(pickImg,animated: true,completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImg = info[UIImagePickerControllerOriginalImage] as? UIImage{
            insertImg.image = pickedImg
        }
        picker.dismiss(animated: true, completion: nil)
    }
   
    @IBAction func btnSave(_ sender: Any) {
        insertPresenter.uploadImage(image: insertImg.image!)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
