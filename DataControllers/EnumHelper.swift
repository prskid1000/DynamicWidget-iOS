//
//  EnumHelper.swift
//  DynamicWidgetDemo
//
//  Created by prithwirajsamanta on 26/04/22.
//

import Foundation

enum Tables: String, CaseIterable{
    case Jobs = "Jobs"
    case MyApplies = "MyApplies"
    case Profile = "Profile"
    case Inbox = "Inbox"
    case Side = "Side"
}

enum Widgets: String, CaseIterable{
    case SampleWidget = "SampleWidget"
    case SampleWidget2 = "SampleWidget2"
}
