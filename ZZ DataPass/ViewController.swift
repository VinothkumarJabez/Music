//
//  ViewController.swift
//  ZZ DataPass
//
//  Created by Delvina Jenoline on 11/08/21.
//  Copyright © 2021 Delvina Jenoline. All rights reserved.
//

import UIKit

var myIndex = 0

let ImageArray = [UIImage(named: "a"),UIImage(named: "aa"),UIImage(named: "b"),UIImage(named: "bb"),UIImage(named: "c"),UIImage(named: "a"),UIImage(named: "a"),UIImage(named: "aa"),UIImage(named: "b"),UIImage(named: "bb"),UIImage(named: "c"),UIImage(named: "b"),UIImage(named: "a"),UIImage(named: "aa"),UIImage(named: "b"),UIImage(named: "bb"),UIImage(named: "c"),UIImage(named: "c"),UIImage(named: "a"),UIImage(named: "aa"),UIImage(named: "b"),UIImage(named: "bb"),UIImage(named: "c"),UIImage(named: "bb"),UIImage(named: "aa"),UIImage(named: "b"),UIImage(named: "bb"),UIImage(named: "c"),UIImage(named: "a"),UIImage(named: "c")]

let NameArray = [" A Sky Full Of Stars","A Year Without Rain","All Falls Down","Alone Part ||","Alone","Attention","Baby","BTS (Mikrokosmos )","Cheap Thirlls","Dangerously","Dark Side","Despacito ","Faded","Favorite Girl","Galway Girl","Girls Like You","Hymn For The Weekend Remix","Hymn For The Weekend","Let Me Love You","Love Me Like You","On My Way","Perfect Duet","Perfect","See You Again Remix","See You Again","Shape Of You","Somebody To Love","Something Just Like This ","The Spectre","We Don't Talk Any More"]


class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {

//var myIndex = 0

    
    @IBOutlet weak var collectionview: UICollectionView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      collectionview.delegate = self
      collectionview.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        cell.songImage.image =  ImageArray[indexPath.row]
        cell.songName.text = NameArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segway", sender: self)
    }


}

