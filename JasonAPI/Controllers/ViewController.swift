//
//  ViewController.swift
//  JasonAPI
//
//  Created by Anirudha SM on 30/11/21.
//

import UIKit

class ViewController: UIViewController {

    var viewModelUser  = UserViewModel()
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModelUser.vc = self
//        viewModelUser.getAllUserData()
        viewModelUser.getAllUserDataAF()
        tblView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModelUser.arrUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as? UserCell
        cell?.modelUser = viewModelUser.arrUsers[indexPath.row]
        return cell!
    }
    
    
}

