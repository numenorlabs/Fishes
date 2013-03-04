//
//  PageViewController.m
//  Fishes
//
//  Created by David on 3/2/13.
//  Copyright (c) 2013 David Farber. All rights reserved.
//

#import "PageViewController.h"


@interface PageViewController ()

@property (strong, nonatomic, readwrite) NSArray *controllers;
@property (strong, nonatomic, readwrite) IBOutlet UIScrollView *scrollView;

@end


@implementation PageViewController

+ (PageViewController *)newWithControllers:(NSArray *)controllers {
    return [[self alloc] initWithControllers:controllers];
}

/* Default Initializer */
- (PageViewController *)initWithControllers:(NSArray *)controllers {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.controllers = controllers;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    return [self initWithControllers:@[]];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSUInteger pageNumber = 0;
    for (UIViewController *childViewController in self.controllers) {
        CGRect frame = self.scrollView.frame;
        frame.origin.x = CGRectGetWidth(frame) * pageNumber;
        frame.origin.y = 0;
        childViewController.view.frame = frame;

        [self addChildViewController:childViewController];
        [self.scrollView addSubview:childViewController.view];
        [childViewController didMoveToParentViewController:self];

        pageNumber++;
    }
}

- (void)viewWillLayoutSubviews {
    CGSize scrollViewSize = self.scrollView.frame.size;
    NSUInteger numberOfPages = self.controllers.count;
    self.scrollView.contentSize = CGSizeMake(scrollViewSize.width * numberOfPages, scrollViewSize.height);
}

@end
