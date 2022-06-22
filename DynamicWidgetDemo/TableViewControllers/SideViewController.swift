//
//  SideViewController.swift
//  DynamicWidgetDemo
//
//  Created by prithwirajsamanta on 26/04/22.
//

import UIKit

class SideViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        TableViewManager.registerTableView(tableName: Tables.Side, tableView: self.tableView)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  TableViewManager.getTableRowCount(tablename: Tables.Side)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let modelName = TableViewManager.getTableWidgetAt(tableName: Tables.Side, position: indexPath.row)
        if modelName == "NA" {
            return UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: modelName), for: indexPath)
            return cell
        }
    }
}
