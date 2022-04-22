//
//  DetailViewController.swift
//  PDPTask10
//
//  Created by macbro on 22/04/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageScrol: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
        imageScrol.image = UIImage(named: "home1")
        // Do any additional setup after loading the view.
    }

    
    func initViews(){
        title = "Scrol View"
    }



}
