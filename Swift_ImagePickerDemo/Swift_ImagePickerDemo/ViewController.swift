//
//  ViewController.swift
//  Swift_ImagePickerDemo
//
//  Created by Apple on 24/05/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    @IBOutlet weak var imgView: UIImageView!
    @IBAction func btnSelectImage(_ sender: UIButton) {
        let imgPicker=UIImagePickerController()
       
       imgPicker.delegate = self
        imgPicker.sourceType=UIImagePickerController.SourceType.photoLibrary
        self.present(imgPicker, animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    imgView.image=info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}




