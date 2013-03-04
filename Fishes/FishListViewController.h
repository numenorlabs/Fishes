//
//  FishListViewController.h
//  Fishes
//
//  Created by David on 3/2/13.
//  Copyright (c) 2013 David Farber. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FishListViewController : UIViewController
    <UITableViewDataSource>

+ (FishListViewController *)newWithFishes:(NSArray *)fishes title:(NSString *)title;
- (FishListViewController *)initWithFishes:(NSArray *)fishes title:(NSString *)title;

@end
