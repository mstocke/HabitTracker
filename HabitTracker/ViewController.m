//
//  ViewController.m
//  HabitTracker
//
//  Created by tstone10 on 6/3/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

/*
 With a pair, create an application that meets the following requirements:
- The main screen of your app should include a UITableView containing a list of several daily habits (e.g., "Run", "Code", "Meditate", etc.)
- When the user clicks on a habit, they should be taken to a second screen that displays details/a description of the habit (e.g., "Run for at least 2 miles," "Spent 30 minutes working on a new iOS skill”)
    - The habit detail view should include a large green button that the user can press to indicate they have completed the habit
    - When the user presses the button, they should be returned to the previous screen, and the habit should be marked complete (strikethrough the text of the habit to indicate completion)
    - Incomplete habits should appear in the table view with a red background; completed habits should appear with a green background
    - BONUS: The habit detail view should include an image related to the habit
*/

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
