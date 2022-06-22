//
//  ContentModel.swift
//  DynamicWidgetDemo
//
//  Created by prithwirajsamanta on 26/04/22.
//

import Foundation

class ContentModel {
    
    var widgetList = [Int: String]()
    
    func addWidget(name:String, position: Int) {
        self.widgetList[position] = name
    }
    
    func removeWidget(name:String) {
        for position in widgetList.keys {
            if widgetList[position] == name {
                self.widgetList.removeValue(forKey: position)
            }
        }
    }
}
