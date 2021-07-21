//
//  InterfaceController.swift
//  WatchPractice2 WatchKit Extension
//
//  Created by Shinichiro Kudo on 2021/06/15.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var table: WKInterfaceTable!
    
    var tasks: [Task] = [
        Task(taskName: "いちご", finishedTime: "07:30", ionName: "いちご", color: .brown),
        Task(taskName: "オレンジ", finishedTime: "09:00", ionName: "オレンジ", color: .brown),
        Task(taskName: "グラス", finishedTime: "11:00", ionName: "グラス", color: .brown),
        Task(taskName: "さくらんぼ", finishedTime: "14:15", ionName: "さくらんぼ", color: .brown),
        Task(taskName: "チョコ", finishedTime: "19:30", ionName: "チョコレート1", color: .brown),
        Task(taskName: "飴", finishedTime: "23:00", ionName: "飴", color: .brown),
    ]
    
    private func configureTable() {
        table.setNumberOfRows(tasks.count, withRowType: "TaskRowController")
        for i in 0..<table.numberOfRows {
            let row: TaskRowController = table.rowController(at: i) as! TaskRowController
            let task: Task = tasks[i]
            row.task = task
        }
    }

    override func awake(withContext context: Any?) {
        // Configure interface objects here.
        configureTable()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
