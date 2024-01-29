//
//  SecondViewController.swift
//  hw_5_4
//
//  Created by Erma on 28/1/24.
//

import UIKit
import SnapKit


class SecondViewController: UIViewController,UITableViewDataSource {
    
    private let tableView = UITableView()
    
    private let friendList: [Friends] = [
        Friends(avaImage: "janeImage", postText: "Jane Cooper has published a new recipe!", postTextTime: "Today | 09:24 AM", postImage: "janePostImage", kebabImage: "kebabImage"),
        Friends(avaImage: "rochelImage", postText: "Rochel has commented on your recipe", postTextTime: "1 day ago | 14:43 PM", postImage: "rochelPostImage", kebabImage: "kebabImage"),
        Friends(avaImage: "bradImage", postText: "Brad Wigington liked your comment", postTextTime: "1 day ago | 09:29 AM", postImage: "bradPostImage", kebabImage: "kebabImage"),
        Friends(avaImage: "tyraImage", postText: "Tyra Ballentine has published a new recipe!", postTextTime: "2 days ago | 10:29 AM", postImage: "tyraPostImage", kebabImage: "kebabImage"),
        Friends(avaImage: "marciImage", postText: "Marci Winkles has published a new recipe!", postTextTime: "3 days ago | 16:52 PM", postImage: "marciPostImage", kebabImage: "kebabImage"),
        Friends(avaImage: "aileenImage", postText: "Aileen has commented on your recipe", postTextTime: "4 days ago | 14:27 PM", postImage: "aileenPostImage", kebabImage: "kebabImage"),
        Friends(avaImage: "georgeImage", postText: "George has commented on your recipe", postTextTime: "5 days ago | 09:20 AM", postImage: "georgePostImage", kebabImage: "kebabImage")
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        view.backgroundColor = .white
        
        tableView.dataSource = self
        
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        
        
        
        view.addSubview(tableView)
        tableView.separatorStyle = .none
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(84)
            make.horizontalEdges.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        cell.setImageData(friendList[indexPath.row].avaImage, friendList[indexPath.row].postText, friendList[indexPath.row].postTextTime, friendList[indexPath.row].postImage, friendList[indexPath.row].kebabImage)
        
        
        return cell
    }
    
    
}


