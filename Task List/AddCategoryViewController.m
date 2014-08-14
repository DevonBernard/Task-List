//
//  AddCategoryViewController.m
//  Task List
//
//  Created by Devon Bernard on 8/13/14.
//  Copyright (c) 2014 Devon Bernard. All rights reserved.
//

#import "AddCategoryViewController.h"
#import "AppDelegate.h"

@interface AddCategoryViewController ()
@property (strong, nonatomic) NSMutableArray *name;
@end

@implementation AddCategoryViewController

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

- (IBAction)CreateCategoryButton:(id)sender {
    NSString *title = _CategoryTitleTextField.text;
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Category Created!" message:title delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
    
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    NSManagedObject *newCategory;
    newCategory = [NSEntityDescription insertNewObjectForEntityForName:@"Category" inManagedObjectContext:context];
    [newCategory setValue: title forKey:@"name"];
    [self.name addObject:title];
    NSError *error;
    [context save:&error];
    
    [alert show];
}
@end
