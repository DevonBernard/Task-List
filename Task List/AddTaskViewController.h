//
//  AddTaskViewController.h
//  Task List
//
//  Created by Devon Bernard on 8/13/14.
//  Copyright (c) 2014 Devon Bernard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddTaskViewController : UIViewController

@property (nonatomic, strong) NSMutableString *categoryTitle;
@property (weak, nonatomic) IBOutlet UITextField *TaskDescriptionTextField;
- (IBAction)CreateTaskButton:(id)sender;

@end
