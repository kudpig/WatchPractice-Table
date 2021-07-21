//
//  Task.swift
//  WatchPractice2 WatchKit Extension
//
//  Created by Shinichiro Kudo on 2021/06/15.
//

import Foundation
import WatchKit

class Task {
    var taskName: String?
    var finishedTime: String?
    var ionName: String?
    var color: UIColor?
    
    init(taskName: String?, finishedTime: String?, ionName: String?, color: UIColor?) {
        self.taskName = taskName
        self.finishedTime = finishedTime
        self.ionName = ionName
        self.color = color
    }
}
