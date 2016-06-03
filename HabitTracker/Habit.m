//
//  Habit.m
//  HabitTracker
//
//  Created by tstone10 on 6/3/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "Habit.h"

@implementation Habit
-(void)logHabit{
    NSLog(@"Name: %@\nDescription: %@\nCompleted: %@",self.name, self.desc, self.isCompleted ? @"Completed" : @"Not completed");
}
@end
