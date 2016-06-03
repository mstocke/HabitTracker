//
//  Habit.h
//  HabitTracker
//
//  Created by tstone10 on 6/3/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Habit : NSObject

@property(weak,nonatomic)NSString *name;
@property(weak,nonatomic)NSString *desc;
@property(nonatomic)BOOL isCompleted;
@property(weak,nonatomic)UIImage *displayImage;
-(void)logHabit;

@end
