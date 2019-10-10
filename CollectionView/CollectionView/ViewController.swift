//
//  ViewController.swift
//  CollectionView
//
//  Created by 大Q on 2019/10/10.
//  Copyright © 2019 Sun. All rights reserved.

import UIKit


class ViewController: UIViewController,//継承したクラス
UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    //使っているプロトコル
    let photos = ["HokudaiFarm",
                 "Kyoto",
                 "Lake",
                 "Osaka",
                 "Otaru",
                 "Sapporo",
                 "Shanghai",
                 "Shikotsuko",
                 "Snowbording",
                 "Xitang",]
   //cellの数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
   //cellの定義
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = .white
        
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        let cellImage = UIImage(named: photos[indexPath.row])
        imageView.image = cellImage
//        if cellImage != nil {
//            performSegue(withIdentifier: "photo", sender: nil)
//        }
        
        let labelText = cell.contentView.viewWithTag(2) as! UILabel
        let cellLabel = photos[indexPath.row]
        labelText.text = cellLabel
        
//        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//          
//            if segue.identifier == "photo" {
//                let nextView = segue.destination as! PhotoViewController
//                nextView.viewImage = imageView
//                nextView.showLabel = labelText
//            }
//        }
        
        return cell
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//         if segue.identifier == "photo" {
//             let nextView = segue.destination as! PhotoViewController
//             nextView.viewImage = cellImage
//             nextView.showLabel = labelTex
//         }
//     }
//segue func
//    var selectedImage: UIImage?
//    var selectedLabel: UILabel?
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexpath: IndexPath) {
//        selectedImage = UIImage(named: photos[indexPath.row])
//        if selectedImage != nil {
//            performSegue(withIdentifier: "photo", sender: nil)
//        }
//        selectedLabel = UILabel(photos[indexpath.row])
//        if selectedLabel != nil {
//            performSegue(withIdentifier: "photo", sender: nil)
//        }
//    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
//        if (segue.identifier == "photo") {
//            let photoVC: PhotoViewController = (segue.destination as? PhotoViewController)!
//            photoVC.selectedImage = selectedImage
//            photoVC.label.text =
//
//        }
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 193, height: 170)
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 15, left: 1, bottom: 15, right: 1)
        collectionView.collectionViewLayout = layout
    }
    


}

