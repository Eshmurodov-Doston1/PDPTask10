//
//  HomeViewController.swift
//  PDPTask10
//
//  Created by macbro on 22/04/22.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDelegate,
                          UICollectionViewDataSource{
  
    let numberOfColumns:CGFloat = 2
    @IBOutlet weak var collectionView: UICollectionView!
    var itemList:Array<Item> = Array()
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        // Do any additional setup after loading the view.
    }
    
    
    // MASRK:-Method
    
    func initViews(){
        collectionView.delegate = self
        collectionView.dataSource = self
        loadCollection()
        let imagePage =  UIImage(named: "ic_page")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: imagePage, style: .plain, target: self, action: #selector(clicRight))
        title = "Collection View"
        loadData()
    }
    
    func loadCollection(){
        self.collectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            let screenSize:CGRect = UIScreen.main.bounds
            let cellWidth = screenSize.width / numberOfColumns - 15
            flowLayout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        }
    }
    
    
    func loadData(){
        itemList.append(Item(title: "Assalomu aleykum", image: "image_page"))
        itemList.append(Item(title: "Qalesan", image: "my_image_car"))
        itemList.append(Item(title: "Assalomu aleykum", image: "home"))
        itemList.append(Item(title: "Qalesan", image: "home1"))
   
        
        itemList.append(Item(title: "Qalesan", image: "my_image_car"))
        itemList.append(Item(title: "Assalomu aleykum", image: "image_page"))
        itemList.append(Item(title: "Qalesan", image: "home1"))
        itemList.append(Item(title: "Assalomu aleykum", image: "home"))
        
        itemList.append(Item(title: "Assalomu aleykum", image: "image_page"))
        itemList.append(Item(title: "Assalomu aleykum", image: "home"))
        itemList.append(Item(title: "Qalesan", image: "home1"))
        itemList.append(Item(title: "Qalesan", image: "my_image_car"))
      
    }
    
    
    // MARK:-Actions
    @objc func clicRight(){
        let vc:DetailViewController = DetailViewController(nibName: "DetailViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    //CollectionView
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = itemList[indexPath.row]
        let itemView = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! ItemCollectionViewCell
        itemView.imageItem.layer.cornerRadius = 10
        itemView.viewText.layer.cornerRadius = 10
        itemView.mainView.layer.cornerRadius = 10

        itemView.imageItem.image = UIImage(named: item.image!)
        itemView.itemText.text = item.title
        return itemView
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.count
    }
    
}
