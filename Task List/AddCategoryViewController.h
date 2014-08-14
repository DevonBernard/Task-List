//
//  AddCategoryViewController.h
//  Task List
//
//  Created by Devon Bernard on 8/13/14.
//  Copyright (c) 2014 Devon Bernard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AddCategoryViewController : UIViewController 
@property (weak, nonatomic) IBOutlet UITextField *CategoryTitleTextField;
- (IBAction)CreateCategoryButton:(id)sender;

@end
