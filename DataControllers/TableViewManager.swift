//
//  TableViewHelper.swift
//  DynamicWidgetDemo
//
//  Created by prithwirajsamanta on 26/04/22.
//

import Foundation
import UIKit

class TableViewManager {
    
    static var tableViewList = [Tables:UITableView]()
    
    init() {
        for table in Tables.allCases {
            TableDataModel.addTable(name: table)
        }
    }
    
    static func registerTableView(tableName: Tables, tableView: UITableView) {
        for widget in Widgets.allCases {
            tableView.register(UINib(nibName:String(describing: widget.rawValue), bundle:nil), forCellReuseIdentifier: String(describing: widget.rawValue))
        }
        self.tableViewList[tableName] = tableView
    }
    
    static func addWidgetToTable(tableName: Tables, widgetName: Widgets, position: Int) {
        TableDataModel.tableContentModelList[tableName]?.addWidget(name: widgetName.rawValue, position: position)
        tableViewList[tableName]?.reloadData()
    }
    
    static func removeWidgetFromTable(tableName: Tables, widgetName: Widgets) {
        TableDataModel.tableContentModelList[tableName]?.removeWidget(name: widgetName.rawValue)
        tableViewList[tableName]?.reloadData()
    }
    
    static func getTableRowCount(tablename:Tables) -> Int {
        return TableDataModel.tableContentModelList[tablename]?.widgetList.count ?? 0
    }
    
    static func getTableWidgetAt(tableName: Tables, position: Int) -> String {
        return TableDataModel.tableContentModelList[tableName]?.widgetList[position] ?? "NA"
    }
    
}
