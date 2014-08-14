//
//  TaskListViewController.h
//  Task List
//
//  Created by Devon Bernard on 8/13/14.
//  Copyright (c) 2014 Devon Bernard. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TaskListViewController : UITableViewController
- (IBAction)AddTaskButton:(id)sender;

@property (nonatomic, strong) NSMutableString *categoryTitle;
@property (strong, nonatomic) NSMutableArray *desc;
@property (strong, nonatomic) NSMutableArray *objectIDs;

@end
