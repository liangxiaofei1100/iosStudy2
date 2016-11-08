//
//  StudyItem.swift
//  iOS Study
//
//  Created by liangxiaofei on 15/11/21.
//  Copyright © 2015年 liangxiaofei. All rights reserved.
//

import Foundation

class StudyItem {
    // 标题
    var title:String!
    // 标题对应的ViewController的StoryBoard
    var viewControllerStoryBoard:String!
    // 标题对应的ViewController的id
    var viewControllerId:String!
    
    init(title:String, viewControllerStoryBoard:String, viewControllerId:String) {
        self.title = title
        self.viewControllerStoryBoard = viewControllerStoryBoard
        self.viewControllerId = viewControllerId
    }
    
    var description: String {
        return "title: \(title), "
        + "StoryBoard: \(viewControllerStoryBoard), "
        + "viewControllerId: \(viewControllerId)"
    }
    
}
