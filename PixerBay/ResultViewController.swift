//
//  ResultViewController.swift
//  PixerBay
//
//  Created by Hiroki Kayanuma on 2017/07/06.
//  Copyright © 2017 Hiroki Kayanuma. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ResultViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    var urlstring = ""
    let API_KEY = "5680356-1336922fce80bab50aa412c6e"
    var preurl: [URL?] = []
    var url: String?
    var json: JSON!
    var totalhits = 0
    var img: [UIImage?] = []
    var imgdata: [Data] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.urlstring = "https://pixabay.com/api/?key="+self.API_KEY+"&q=apple&pretty=true"// URLを代入
        print(self.urlstring)
        Alamofire.request(self.urlstring).responseJSON{ response in
            self.json = JSON(response.result.value ?? 0)//結果をjsonに代入
            self.totalhits = self.json["totalHits"].int!//検索ヒット数
            
            for i in 0..<self.totalhits {
                self.preurl.append(self.json["hits"][i]["previewURL"].url)//urlを代入
                self.imgdata.append(try! Data(contentsOf: self.preurl[i]!))//データ型として取得し，imgdataに代入
                self.img.append(UIImage(data: self.imgdata[i]))//イメージデータをimgに代入
            }
        }
    }
    
    //APIを叩く!
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        let cellImage = self.img[indexPath.row]
        imageView.image = cellImage
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize:CGFloat = self.view.frame.size.width/2-2
        return CGSize(width: cellSize, height: cellSize)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {

        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.totalhits;
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
