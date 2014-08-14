//
//  CategoryListViewController.h
//  Task List
//
//  Created by Devon Bernard on 8/13/14.
//  Copyright (c) 2014 Devon Bernard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface CategoryListViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource, UITableViewDelegate>
- (IBAction)AddCategoryButton:(id)sender;
@property (strong, nonatomic) NSMutableArray *name;
@property (strong, nonatomic) NSMutableArray *objectIDs;
@property NSArray *categories;
@property NSMutableArray *myArray;

@end
