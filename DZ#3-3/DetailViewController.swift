//
//  DetailViewController.swift
//  DZ#3-3
//
//  Created by Фархат Сталбек уулу on 27/11/22.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    var chatText = ""
    var chatImage = ""
    var chatName = ""
    
    @IBOutlet weak var chatLabel: UILabel!
    
    @IBOutlet weak var chatImageImageView: UIImageView!
    
    @IBOutlet weak var lastMasageLabel: UILabel!
    



    override func viewDidLoad() {
        super.viewDidLoad()
        chatLabel.text = chatName
        lastMasageLabel.text = chatText
        chatImageImageView.image = UIImage(systemName: (chatImage))
    }
}
