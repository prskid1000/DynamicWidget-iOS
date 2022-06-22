//
//  ContentList.swift
//  DynamicWidgetDemo
//
//  Created by prithwirajsamanta on 26/04/22.
//

import Foundation

class TableDataModel {
    
    static var tableContentModelList = [Tables: ContentModel]()
    static var tableDataModelList = [Tables: DataModel]()
    
    static func addTable(name: Tables) {
        self.tableContentModelList[name] = ContentModel()
        self.tableDataModelList[name] = DataModel()
    }
    
    static func removeTable(name: Tables) {
        self.tableContentModelList.removeValue(forKey: name)
        self.tableDataModelList.removeValue(forKey: name)
    }
}
