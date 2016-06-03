//
//  HabitTableViewController.m
//  HabitTracker
//
//  Created by tstone10 on 6/3/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "HabitTableViewController.h"
#import "Habit.h"

@interface HabitTableViewController ()

@property(weak,nonatomic)NSMutableArray *habitList;

@end

@implementation HabitTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initHabits];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    //[self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initHabits {
    Habit *doDishes = [[Habit alloc]init];
    doDishes.name = @"Dishes";
    doDishes.desc = @"Do the dishes every day";
    doDishes.isCompleted = false;
    doDishes.displayImage = @"placeholder";
    
    Habit *mowLawn = [[Habit alloc]init];
    mowLawn.name = @"Mow the lawn";
    mowLawn.desc = @"Mow the lawn once a week";
    mowLawn.isCompleted = false;
    mowLawn.displayImage = @"placeholder";
    
    _habitList = [NSMutableArray arrayWithObjects:doDishes, mowLawn, nil];
    
//    for(id object in _habitList){
//        [object logHabit];
//    }
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_habitList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"habitCell" forIndexPath:indexPath];
    NSLog(@"Cell");
    Habit *currentHabit = [_habitList objectAtIndex:indexPath.row];
//    [currentHabit logHabit];
    NSLog(@"Cell");
    cell.textLabel.text = currentHabit.name;
    //cell.imageView.image = currentHabit.displayImage;
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
