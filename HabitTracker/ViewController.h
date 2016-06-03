//
//  ViewController.h
//  HabitTracker
//
//  Created by tstone10 on 6/3/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Habit.h"

@interface ViewController : UIViewController

@property(weak,nonatomic)Habit *habit;
@property (weak, nonatomic) IBOutlet UILabel *habitNameLabel;

@end

