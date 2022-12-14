//
//  ViewController.swift
//  Camera&DisplayPhoto
//
//  Created by Scholar on 8/16/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var imagePicker = UIImagePickerController ()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    
    
    @IBAction func takeSelfieTapped(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        present (imagePicker, animated: true, completion: nil)
       
    }
    @IBAction func photoLibraryTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present (imagePicker, animated: true, completion: nil)
    }
    @IBOutlet weak var displayImage: UIImageView!
    internal func imagePickerController (_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            newImage.image = selectedImage
        }
            
        }
}
