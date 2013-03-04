//
//  PageViewController.h
//  Fishes
//
//  Created by David on 3/2/13.
//  Copyright (c) 2013 David Farber. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PageViewController : UIViewController
    <UIScrollViewDelegate>

+ (PageViewController *)newWithControllers:(NSArray *)controllers;
- (PageViewController *)initWithControllers:(NSArray *)controllers;

@end
