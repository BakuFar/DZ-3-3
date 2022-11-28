//
//  ViewController.swift
//  DZ#3-3
//
//  Created by Фархат Сталбек уулу on 27/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chatList: UITableView!
    var chats: [String] = ["GeekStudents", "Ленинское", "Honda M-NV", "GeekTech 13-2", "Sunshine", "N E"]
    var chatDatails: [String] = ["Но там сложно", "Кто потерял наглую, жирную животину отзовитесь!!!", "Ну і вимкнути світло, щоб зря не горіло", "Ваш StandUp засчитан!", "Рахмат👍", "только &&"]
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "chat_cell", for: indexPath)
        cell.textLabel?.text = chats[indexPath.row]
        return cell
        
    }
    
    
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "datailVC") as! DetailViewController
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
