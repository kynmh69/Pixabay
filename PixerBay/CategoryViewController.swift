//
//  CategoryViewController.swift
//  PixerBay
//
//  Created by Hiroki Kayanuma on 2017/07/06.
//  Copyright © 2017 Hiroki Kayanuma. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class CategoryViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 500
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
    let result = ResultViewController()

    @IBAction func getFashion(_ sender: Any) {
        var json: JSON!
        var totalhits = 0
        var preurl: [URL?] = []
        var imgdata: [Data]
        var img: [UIImage] = []
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        Alamofire.request("https://pixabay.com/api/?key="+self.result.API_KEY+"&category=fatshion&pretty=true").responseJSON{ response in
            json = JSON(response.result.value ?? 0)
            totalhits = json["totalHits"].int!
            
            for i in 0..<totalhits {
                
                preurl[i] = json["hits"][i]["previewURL"].url
                imgdata[i] = try! Data(contentsOf: preurl[i]!)
                img[i] = UIImage(data: imgdata[i])!
                
            }
        }
        
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        let cellImage = img[indexPath.row]
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
            return totalhits;
        }
    }
    
    
    @IBAction func getPeople(_ sender: Any) {
        var json: JSON!
        var totalhits = 0
        var preurl: [URL?] = []
        var imgdata: [Data]
        var img: [UIImage] = []
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            Alamofire.request("https://pixabay.com/api/?key="+self.result.API_KEY+"&category=people&pretty=true").responseJSON{ response in
                json = JSON(response.result.value ?? 0)
                totalhits = json["totalHits"].int!
                
                for i in 0..<totalhits {
                    
                    preurl[i] = json["hits"][i]["previewURL"].url
                    imgdata[i] = try! Data(contentsOf: preurl[i]!)
                    img[i] = UIImage(data: imgdata[i])!
                    
                }
            }
            
            let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            let imageView = cell.contentView.viewWithTag(1) as! UIImageView
            let cellImage = img[indexPath.row]
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
            return totalhits;
        }
    }
    
    
    @IBAction func getNature(_ sender: Any) {
        var json: JSON!
        var totalhits = 0
        var preurl: [URL?] = []
        var imgdata: [Data]
        var img: [UIImage] = []
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            Alamofire.request("https://pixabay.com/api/?key="+self.result.API_KEY+"&category=nature&pretty=true").responseJSON{ response in
                json = JSON(response.result.value ?? 0)
                totalhits = json["totalHits"].int!
                
                for i in 0..<totalhits {
                    
                    preurl[i] = json["hits"][i]["previewURL"].url
                    imgdata[i] = try! Data(contentsOf: preurl[i]!)
                    img[i] = UIImage(data: imgdata[i])!
                    
                }
            }
            
            let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            let imageView = cell.contentView.viewWithTag(1) as! UIImageView
            let cellImage = img[indexPath.row]
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
            return totalhits;
        }
    }
    
    @IBAction func getFeelings(_ sender: Any) {
        var json: JSON!
        var totalhits = 0
        var preurl: [URL?] = []
        var imgdata: [Data]
        var img: [UIImage] = []
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            Alamofire.request("https://pixabay.com/api/?key="+self.result.API_KEY+"&category=feelings&pretty=true").responseJSON{ response in
                json = JSON(response.result.value ?? 0)
                totalhits = json["totalHits"].int!
                
                for i in 0..<totalhits {
                    
                    preurl[i] = json["hits"][i]["previewURL"].url
                    imgdata[i] = try! Data(contentsOf: preurl[i]!)
                    img[i] = UIImage(data: imgdata[i])!
                    
                }
            }
            
            let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            let imageView = cell.contentView.viewWithTag(1) as! UIImageView
            let cellImage = img[indexPath.row]
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
            return totalhits;
        }
    }
    
    @IBAction func getSports(_ sender: Any) {
        var json: JSON!
        var totalhits = 0
        var preurl: [URL?] = []
        var imgdata: [Data]
        var img: [UIImage] = []
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            Alamofire.request("https://pixabay.com/api/?key="+self.result.API_KEY+"&category=sports&pretty=true").responseJSON{ response in
                json = JSON(response.result.value ?? 0)
                totalhits = json["totalHits"].int!
                
                for i in 0..<totalhits {
                    
                    preurl[i] = json["hits"][i]["previewURL"].url
                    imgdata[i] = try! Data(contentsOf: preurl[i]!)
                    img[i] = UIImage(data: imgdata[i])!
                    
                }
            }
            
            let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            let imageView = cell.contentView.viewWithTag(1) as! UIImageView
            let cellImage = img[indexPath.row]
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
            return totalhits;
        }
    }
    
    
    @IBAction func getPlace(_ sender: Any) {
        var json: JSON!
        var totalhits = 0
        var preurl: [URL?] = []
        var imgdata: [Data]
        var img: [UIImage] = []
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            Alamofire.request("https://pixabay.com/api/?key="+self.result.API_KEY+"&category=place&pretty=true").responseJSON{ response in
                json = JSON(response.result.value ?? 0)
                totalhits = json["totalHits"].int!
                
                for i in 0..<totalhits {
                    
                    preurl[i] = json["hits"][i]["previewURL"].url
                    imgdata[i] = try! Data(contentsOf: preurl[i]!)
                    img[i] = UIImage(data: imgdata[i])!
                    
                }
            }
            
            let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            let imageView = cell.contentView.viewWithTag(1) as! UIImageView
            let cellImage = img[indexPath.row]
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
            return totalhits;
        }
    }
    
    @IBAction func getScience(_ sender: Any) {
        var json: JSON!
        var totalhits = 0
        var preurl: [URL?] = []
        var imgdata: [Data]
        var img: [UIImage] = []
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            Alamofire.request("https://pixabay.com/api/?key="+self.result.API_KEY+"&category=science&pretty=true").responseJSON{ response in
                json = JSON(response.result.value ?? 0)
                totalhits = json["totalHits"].int!
                
                for i in 0..<totalhits {
                    
                    preurl[i] = json["hits"][i]["previewURL"].url
                    imgdata[i] = try! Data(contentsOf: preurl[i]!)
                    img[i] = UIImage(data: imgdata[i])!
                    
                }
            }
            
            let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            let imageView = cell.contentView.viewWithTag(1) as! UIImageView
            let cellImage = img[indexPath.row]
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
            return totalhits;
        }
    }
    
    @IBAction func getAnimal(_ sender: Any) {
        var json: JSON!
        var totalhits = 0
        var preurl: [URL?] = []
        var imgdata: [Data]
        var img: [UIImage] = []
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            Alamofire.request("https://pixabay.com/api/?key="+self.result.API_KEY+"&category=animal&pretty=true").responseJSON{ response in
                json = JSON(response.result.value ?? 0)
                totalhits = json["totalHits"].int!
                
                for i in 0..<totalhits {
                    
                    preurl[i] = json["hits"][i]["previewURL"].url
                    imgdata[i] = try! Data(contentsOf: preurl[i]!)
                    img[i] = UIImage(data: imgdata[i])!
                    
                }
            }
            
            let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            let imageView = cell.contentView.viewWithTag(1) as! UIImageView
            let cellImage = img[indexPath.row]
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
            return totalhits;
        }
    }
    
    @IBAction func getEducation(_ sender: Any) {
        var json: JSON!
        var totalhits = 0
        var preurl: [URL?] = []
        var imgdata: [Data]
        var img: [UIImage] = []
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            Alamofire.request("https://pixabay.com/api/?key="+self.result.API_KEY+"&category=education&pretty=true").responseJSON{ response in
                json = JSON(response.result.value ?? 0)
                totalhits = json["totalHits"].int!
                
                for i in 0..<totalhits {
                    
                    preurl[i] = json["hits"][i]["previewURL"].url
                    imgdata[i] = try! Data(contentsOf: preurl[i]!)
                    img[i] = UIImage(data: imgdata[i])!
                    
                }
            }
            
            let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            let imageView = cell.contentView.viewWithTag(1) as! UIImageView
            let cellImage = img[indexPath.row]
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
            return totalhits;
        }
    }
    
    @IBAction func getComputer(_ sender: Any) {
        var json: JSON!
        var totalhits = 0
        var preurl: [URL?] = []
        var imgdata: [Data]
        var img: [UIImage] = []
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            Alamofire.request("https://pixabay.com/api/?key="+self.result.API_KEY+"&category=computer&pretty=true").responseJSON{ response in
                json = JSON(response.result.value ?? 0)
                totalhits = json["totalHits"].int!
                
                for i in 0..<totalhits {
                    
                    preurl[i] = json["hits"][i]["previewURL"].url
                    imgdata[i] = try! Data(contentsOf: preurl[i]!)
                    img[i] = UIImage(data: imgdata[i])!
                    
                }
            }
            
            let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            let imageView = cell.contentView.viewWithTag(1) as! UIImageView
            let cellImage = img[indexPath.row]
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
            return totalhits;
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
