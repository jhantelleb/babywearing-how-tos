//
//  MainMenuTableViewController.swift
//  Babywearing
//
//  Created by Jhantelle Belleza on 4/11/17.
//  Copyright © 2017 JhantelleB. All rights reserved.
//

import UIKit

class MainMenuTableViewController: UITableViewController {

    var menuViewModel: MainMenuViewModel!
    
    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuViewModel = MainMenuViewModel()
        menuViewModel.createMenuItems()
        tableView.layer.borderWidth = 3.0 //Test only, transfer this to the View model!
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuViewModel.menuItems.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.mainMenuCell, for: indexPath)
        cell.textLabel?.text = menuViewModel.menuItems[indexPath.row].description
        return cell
    }
}
