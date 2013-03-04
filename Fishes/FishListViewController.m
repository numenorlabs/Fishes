//
//  FishListViewController.m
//  Fishes
//
//  Created by David on 3/2/13.
//  Copyright (c) 2013 David Farber. All rights reserved.
//

#import "FishListViewController.h"


@interface FishListViewController ()

@property (strong, nonatomic, readwrite) NSArray *fishes;
@property (strong, nonatomic, readwrite) NSString *title;
@property (strong, nonatomic, readwrite) IBOutlet UILabel *titleLabel;

@end


@implementation FishListViewController

+ (FishListViewController *)newWithFishes:(NSArray *)fishes title:(NSString *)title {
    return [[self alloc] initWithFishes:fishes title:title];
}

/* Default Initializer */
- (FishListViewController *)initWithFishes:(NSArray *)fishes title:(NSString *)title {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.fishes = fishes;
        self.title = title;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    return [self initWithFishes:@[] title:@"No Fish Today"];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.titleLabel.text = self.title;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.fishes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"FishCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }

    cell.textLabel.text = self.fishes[indexPath.row];

    return cell;
}

@end
