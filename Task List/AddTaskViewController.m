//
//  AddTaskViewController.m
//  Task List
//
//  Created by Devon Bernard on 8/13/14.
//  Copyright (c) 2014 Devon Bernard. All rights reserved.
//

#import "AddTaskViewController.h"
#import "AppDelegate.h"

@interface AddTaskViewController ()

@end

@implementation AddTaskViewController

@synthesize categoryTitle;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)CreateTaskButton:(id)sender {
    NSString *description = _TaskDescriptionTextField.text;
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Task Created!" message:description delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
    
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    NSManagedObject *newCategory;
    newCategory = [NSEntityDescription insertNewObjectForEntityForName:@"Task" inManagedObjectContext:context];
    [newCategory setValue: description forKey:@"desc"];
    [newCategory setValue: categoryTitle forKey:@"category"];
    NSError *error;
    [context save:&error];
    
    [alert show];
}
@end
