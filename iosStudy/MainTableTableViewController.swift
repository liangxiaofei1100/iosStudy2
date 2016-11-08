//
//  MainTableTableViewController.swift
//  iosStudy
//
//  Created by 梁小飞 on 2016/11/8.
//  Copyright © 2016年 梁小飞. All rights reserved.
//

import UIKit

class MainTableTableViewController: UITableViewController {
    private var studyList = [StudyItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "iOS Study"
        
        initItemList()
        // 去掉空白行
        tableView.tableFooterView = UIView()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studyList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = studyList[indexPath.row].title
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.setSelected(false, animated: true)
        
        let studyItem = studyList[indexPath.row]
        
        let storyboard = UIStoryboard(name: studyItem.viewControllerStoryBoard, bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(withIdentifier: studyItem.viewControllerId)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    /// Init list items
    private func initItemList() {
        studyList.append(StudyItem(title: "网络", viewControllerStoryBoard: "Network", viewControllerId: "Network"))
    }
    
    
}
