//
//  InbosViewController.swift
//  DynamicWidgetDemo
//
//  Created by prithwirajsamanta on 26/04/22.
//

import UIKit
import SideMenu

class InboxViewController: UITableViewController {
    
    @IBAction func sideMenuAction() {
        let menu = SideMenuNavigationController(rootViewController: SideViewController())
        menu.menuWidth = self.view.frame.width * 0.8
        menu.leftSide = true
        menu.presentationStyle  = .menuSlideIn
        menu.presentDuration = 0.8
        menu.presentationStyle.onTopShadowOpacity = 0.7
        menu.presentationStyle.presentingEndAlpha = 0.5
        self.present(menu, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        TableViewManager.registerTableView(tableName: Tables.Inbox, tableView: self.tableView)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  TableViewManager.getTableRowCount(tablename: Tables.Inbox)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let modelName = TableViewManager.getTableWidgetAt(tableName: Tables.Inbox, position: indexPath.row)
        if modelName == "NA" {
            return UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: modelName), for: indexPath)
            return cell
        }
    }

}
