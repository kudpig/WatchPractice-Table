//
//  TaskRowController.swift
//  WatchPractice2 WatchKit Extension
//
//  Created by Shinichiro Kudo on 2021/06/15.
//

import UIKit
import WatchKit

class TaskRowController: NSObject {
    
    @IBOutlet weak var labelTaskName: WKInterfaceLabel!
    
    @IBOutlet weak var labelFinishedTime: WKInterfaceLabel!
    
    @IBOutlet weak var imageViewTask: WKInterfaceImage!
    
    var task: Task? {
        didSet {
            labelTaskName.setText(task?.taskName)
            labelFinishedTime.setText(task?.finishedTime)
            imageViewTask.setTintColor(task?.color)
            imageViewTask.setImageNamed(task?.ionName)
            labelTaskName.setTextColor(task?.color)
        }
    }

}
