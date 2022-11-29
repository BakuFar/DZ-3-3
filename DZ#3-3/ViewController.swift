//
//  ViewController.swift
//  DZ#3-3
//
//  Created by Фархат Сталбек уулу on 27/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chatList: UITableView!
    
    var chats: [chatModel] = [chatModel(userName: "GeekStudents", image: "square.and.arrow.up", lastMasage: "Но там сложно"), chatModel(userName: "Ленинское", image: "eraser.fill", lastMasage: "Кто потерял наглую, жирную животину отзовитесь!!!"), chatModel(userName: "Honda M-NV", image: "scribble", lastMasage: "Ну і вимкнути світло, щоб зря не горіло"), chatModel(userName: "GeekTech 13-2", image: "tray.2", lastMasage: "Ваш StandUp засчитан"), chatModel(userName: "Sunshine", image: "folder.badge.gearshape", lastMasage: "Рахмат👍"), chatModel(userName: "N E", image: "externaldrive.fill.badge.icloud", lastMasage: "только &&")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatList.register(UITableViewCell.self, forCellReuseIdentifier: "chat_cell")
    }


}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "chat_cell")
        cell.textLabel?.text = chats[indexPath.row].userName
        cell.imageView?.image = UIImage(systemName: chats[indexPath.row].image)
        cell.detailTextLabel?.text = chats[indexPath.row].lastMasage
        return cell
    }
    
    
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "datailVC") as! DetailViewController
        navigationController?.pushViewController(detailVC, animated: true)
        detailVC.chatText = chats[indexPath.row].lastMasage
        detailVC.chatImage = chats[indexPath.row].image
        detailVC.chatName = chats[indexPath.row].userName
    }
}

struct chatModel {
    var userName = ""
    var image = ""
    var lastMasage = ""
}
