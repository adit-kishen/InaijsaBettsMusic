//
//  ViewController.swift
//  InaijsaBettsMusic
//
//  Created by Adit Kishen on 2/3/20.
//  Copyright © 2020 Adit Kishen. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var music = [String?]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        music = ["RUTS", "BALLERINA", "HUMMINGBIRD", "SATISFACTION", "MOCKINGBIRD", "SKIN", "PUSHH", "ZOMBIE WALLS"]
        self.tableView.register(MusicTableViewCell.self, forCellReuseIdentifier: "musicTableViewCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicTableViewCell") as! MusicTableViewCell
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return music.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

}

