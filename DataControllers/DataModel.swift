//
//  DataModel.swift
//  DynamicWidgetDemo
//
//  Created by prithwirajsamanta on 26/04/22.
//

import Foundation

class DataModel {
    
    var widgetDataList = [Int: String]()
    
    func addWidgetData(data:Any, position: Int) {
        self.widgetDataList[position] = data
    }
    
    func removeWidgetData(name:String) {
        for position in widgetDataList.keys {
            if widgetDataList[position] == name {
                self.widgetDataList.removeValue(forKey: position)
            }
        }
    }
}
